package ru.madbrains.mad_pay

import google.Google.CardAuthMethods
import ru.madbrains.mad_pay.MadPay.PaymentNetwork

class PaymentHelpers {
    companion object {
        val availableAllowedAuthMethods: List<String> = listOf("PAN_ONLY", "CRYPTOGRAM_3DS")
        val availableAllowedPaymentNetworks: List<String> = listOf("AMEX", "DISCOVER", "INTERAC", "JCB", "MASTERCARD", "VISA")

        private val availablePaymentNetworks: List<String> = listOf("VISA", "MASTERCARD", "DISCOVER", "JCB", "AMEX")
        private val availableAuthMethods: List<String> = listOf("PAN_ONLY", "CRYPTOGRAM_3DS")

        private fun decodePaymentNetwork(paymentNetwork: PaymentNetwork): String? {
            return when (paymentNetwork) {
                PaymentNetwork.VISA -> "VISA"
                PaymentNetwork.MASTERCARD -> "MASTERCARD"
                PaymentNetwork.DISCOVER -> "DISCOVER"
                PaymentNetwork.JCB -> "JCB"
                PaymentNetwork.AMEX -> "AMEX"
                else -> paymentNetwork.name
            }
        }

        private fun decodeAuthMethods(cardAuthMethods: CardAuthMethods): String? {
            return when (cardAuthMethods) {
                CardAuthMethods.PAN_ONLY -> "PAN_ONLY"
                CardAuthMethods.CRYPTOGRAM_3DS -> "CRYPTOGRAM_3DS"
                else -> null
            }
        }

        fun getPaymentNetwork(paymentNetworks: List<PaymentNetwork>): List<String> {
            return when {
                !paymentNetworks.isNullOrEmpty() ->
                    paymentNetworks.mapNotNull { decodePaymentNetwork(it) }
                else -> availablePaymentNetworks
            }
        }

        fun getAuthMethods(authMethods: List<CardAuthMethods>): List<String> {
            return when {
                !authMethods.isNullOrEmpty() ->
                    authMethods.mapNotNull { decodeAuthMethods(it) }
                else -> availableAuthMethods
            }
        }
    }
}
