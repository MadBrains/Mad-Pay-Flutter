package ru.madbrains.mad_pay

import org.json.JSONArray
import org.json.JSONObject

class RawMethods {
    companion object {
        private fun getBaseRequest(): JSONObject {
            return JSONObject()
                    .put("apiVersion", 2)
                    .put("apiVersionMinor", 0)
        }

        private fun getGatewayJsonTokenizationType(gatewayName: String, gatewayMerchantID: String): JSONObject {
            return JSONObject().put("type", "PAYMENT_GATEWAY")
                    .put("parameters", JSONObject()
                            .put("gateway", gatewayName)
                            .put("gatewayMerchantId", gatewayMerchantID))
        }

        private fun getTransactionInfo(totalPrice: Double, currencyCode: String, countryCode: String): JSONObject {
            return JSONObject()
                    .put("totalPrice", totalPrice.toString())
                    .put("totalPriceStatus", "FINAL")
                    .put("countryCode", countryCode)
                    .put("currencyCode", currencyCode)
        }

        private fun getCardPaymentMethod(gatewayName: String, gatewayMerchantID: String, allowedPaymentNetworks: List<String>? = null, allowedAuthMethods: List<String>? = null): JSONObject {
            val cardPaymentMethod = getBaseCardPaymentMethod(allowedPaymentNetworks, allowedAuthMethods)
            val tokenizationOptions = getGatewayJsonTokenizationType(gatewayName, gatewayMerchantID)
            cardPaymentMethod.put("tokenizationSpecification", tokenizationOptions)
            return cardPaymentMethod
        }

        private fun getBaseCardPaymentMethod(allowedPaymentNetworks: List<String>? = null, allowedAuthMethods: List<String>? = null): JSONObject {
            val cardPaymentMethod = JSONObject().put("type", "CARD")

            val cardNetworks: JSONArray = when (allowedPaymentNetworks) {
                null -> JSONArray(PaymentHelpers.availableAllowedPaymentNetworks)
                else -> JSONArray(allowedPaymentNetworks)
            }

            val authMethods: JSONArray = when (allowedAuthMethods) {
                null -> JSONArray(PaymentHelpers.availableAllowedAuthMethods)
                else -> JSONArray(allowedAuthMethods)
            }

            val params = JSONObject()
                    .put("allowedAuthMethods", authMethods)
                    .put("allowedCardNetworks", cardNetworks)

            cardPaymentMethod.put("parameters", params)
            return cardPaymentMethod
        }

        fun getCheckMethod(): JSONObject {
            val baseRequest = getBaseRequest()
            baseRequest.put("allowedPaymentMethods", JSONArray().put(getBaseCardPaymentMethod()))
            return baseRequest
        }

        fun getCheckActiveCardMethod(allowedPaymentNetworks: List<MadPay.PaymentNetwork>): JSONObject {
            val paymentNetworks = PaymentHelpers.getPaymentNetwork(allowedPaymentNetworks)

            val baseRequest = getBaseRequest()
            baseRequest.put("allowedPaymentMethods", JSONArray().put(getBaseCardPaymentMethod(paymentNetworks)))
            baseRequest.put("existingPaymentMethodRequired", false)

            return baseRequest
        }

        fun getPaymentMethod(totalPrice: Double, allowedPaymentNetworks: List<MadPay.PaymentNetwork>,
                             google: google.Google.GoogleParameters,
                             emailRequired: Boolean, currencyCode: String, countryCode: String): JSONObject {

            val paymentNetworks = PaymentHelpers.getPaymentNetwork(allowedPaymentNetworks)
            val authMethods = PaymentHelpers.getAuthMethods(google.allowedCardsMethodsList)

            val merchantInfo = when {
                google.merchantName.isNotEmpty() -> JSONObject()
                        .putOpt("merchantName", google.merchantName)
                else -> null
            }

            return getBaseRequest()
                    .putOpt("merchantInfo", merchantInfo)
                    .put("emailRequired", emailRequired)
                    .put("transactionInfo", getTransactionInfo(totalPrice, currencyCode, countryCode))
                    .put("allowedPaymentMethods", JSONArray().put(getCardPaymentMethod(google.gatewayName,
                            google.gatewayMerchantId, paymentNetworks, authMethods)))
        }
    }
}