package ru.madbrains.mad_pay

import org.json.JSONArray
import org.json.JSONObject

class RawMethods {
    companion object {

        private fun getBaseRequest(): JSONObject {
            return JSONObject().apply {
                put("apiVersion", 2)
                put("apiVersionMinor", 0)
            }
        }

        private fun getAllowedPaymentMethods(google: Google.GoogleParameters, allowedPaymentNetworks: List<MadPay.PaymentNetwork>?): JSONObject {
            return JSONObject().apply {
                put("type", "CARD")
                put("parameters", getPaymentParameters(google, allowedPaymentNetworks))
                put("tokenizationSpecification", getTokenizationSpecification(google))
            }
        }

        private fun getPaymentParameters(google: Google.GoogleParameters, allowedPaymentNetworks: List<MadPay.PaymentNetwork>?): JSONObject {
            val allowedAuthMethods: JSONArray = when (google.cardParameters.allowedCardsMethodsList) {
                null -> JSONArray(PaymentHelpers.availableAllowedAuthMethods)
                else -> JSONArray(PaymentHelpers.getAuthMethods(google.cardParameters.allowedCardsMethodsList))
            }

            val allowedCardNetworks: JSONArray = when (allowedPaymentNetworks) {
                null -> JSONArray(PaymentHelpers.availableAllowedPaymentNetworks)
                else -> JSONArray(PaymentHelpers.getPaymentNetwork(allowedPaymentNetworks))
            }

            return JSONObject().apply {
                put("allowedAuthMethods", allowedAuthMethods)
                put("allowedCardNetworks", allowedCardNetworks)
                if (google.hasCardParameters()) {
                    put("allowPrepaidCards", google.cardParameters.allowPrepaidCards)
                    put("allowCreditCards", google.cardParameters.allowCreditCards)
                    put("assuranceDetailsRequired", google.cardParameters.assuranceDetailsRequired)
                    put("billingAddressRequired", google.cardParameters.billingAddressRequired)
                    if (google.cardParameters.hasBillingAddressParameters()) {
                        put("billingAddressParameters", JSONObject().apply {
                            put("format", google.cardParameters.billingAddressParameters.billingFormat)
                            put("phoneNumberRequired", google.cardParameters.billingAddressParameters.phoneNumberRequired)
                        })
                    }
                }
            }
        }

        private fun getTokenizationSpecification(google: Google.GoogleParameters): JSONObject {
            return JSONObject().apply {
                put("type", "PAYMENT_GATEWAY")
                put("parameters", JSONObject().apply {
                    put("gateway", google.gatewayName)
                    put("gatewayMerchantId", google.gatewayMerchantId)
                })
            }
        }

        private fun getTransactionInfo(google: Google.GoogleParameters, totalPrice: Double, currencyCode: String, countryCode: String): JSONObject {
            return JSONObject().apply {
                put("currencyCode", currencyCode)
                put("countryCode", countryCode)
                put("totalPrice", totalPrice.toString())
                put("totalPriceStatus", PaymentHelpers.decodeTotalPriceStatus(google.transactionInfo.totalPriceStatus))
                if (google.hasTransactionInfo()) {
                    put("transactionId", google.transactionInfo.transactionId)
                    put("totalPriceLabel", google.transactionInfo.totalPriceLabel)
                    put("checkoutOption", PaymentHelpers.decodeCheckoutOption(google.transactionInfo.checkoutOption))
                }
            }
        }

        private fun getShippingAddressParameters(shippingAddressParameters: Google.ShippingAddressParameters): JSONObject {
            return JSONObject().apply {
                put("allowedCountryCodes", JSONArray(shippingAddressParameters.allowedCountryCodesList))
                put("phoneNumberRequired", shippingAddressParameters.phoneNumberRequired)
            }
        }


        private fun getCheckPaymentMethod(allowedPaymentNetworks: List<String>? = null, allowedAuthMethods: List<String>? = null): JSONObject {
            val cardNetworks: JSONArray = when (allowedPaymentNetworks) {
                null -> JSONArray(PaymentHelpers.availableAllowedPaymentNetworks)
                else -> JSONArray(allowedPaymentNetworks)
            }

            val authMethods: JSONArray = when (allowedAuthMethods) {
                null -> JSONArray(PaymentHelpers.availableAllowedAuthMethods)
                else -> JSONArray(allowedAuthMethods)
            }

            return JSONObject().apply {
                put("type", "CARD")
                put("parameters", JSONObject().apply {
                    put("allowedAuthMethods", authMethods)
                    put("allowedCardNetworks", cardNetworks)
                })
            }
        }

        fun getCheckMethod(): JSONObject {
            return getBaseRequest().apply {
                put("allowedPaymentMethods", JSONArray().put(getCheckPaymentMethod()))
            }
        }

        fun getCheckActiveCardMethod(allowedPaymentNetworks: List<MadPay.PaymentNetwork>): JSONObject {
            val paymentNetworks = PaymentHelpers.getPaymentNetwork(allowedPaymentNetworks)

            return getBaseRequest().apply {
                put("allowedPaymentMethods", JSONArray().put(getCheckPaymentMethod(paymentNetworks)))
                put("existingPaymentMethodRequired", false)
            }
        }

        fun getPaymentMethod(google: Google.GoogleParameters, allowedPaymentNetworks: List<MadPay.PaymentNetwork>, totalPrice: Double,
                             currencyCode: String, countryCode: String, emailRequired: Boolean): JSONObject {
            val merchantInfo = when {
                google.merchantName.isNotEmpty() -> JSONObject()
                        .put("merchantId", google.merchantId)
                        .putOpt("merchantName", google.merchantName)
                else -> null
            }

            return getBaseRequest().apply {
                put("merchantInfo", merchantInfo)
                put("allowedPaymentMethods", JSONArray().put(getAllowedPaymentMethods(google, allowedPaymentNetworks)))
                put("transactionInfo", getTransactionInfo(google, totalPrice, currencyCode, countryCode))
                put("emailRequired", emailRequired)
                put("shippingAddressRequired", google.shippingAddressRequired)
                if (google.hasShippingAddressParameters()) {
                    put("shippingAddressParameters", getShippingAddressParameters(google.shippingAddressParameters))
                }
            }
        }

    }
}