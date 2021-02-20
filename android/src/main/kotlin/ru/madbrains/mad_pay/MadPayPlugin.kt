package ru.madbrains.mad_pay

import android.app.Activity
import android.content.Context
import android.content.Intent
import androidx.annotation.NonNull
import androidx.annotation.Nullable
import com.google.android.gms.common.api.ApiException
import com.google.android.gms.wallet.*
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry
import org.json.JSONObject

class MadPayPlugin : FlutterPlugin, MethodCallHandler, PluginRegistry.ActivityResultListener, ActivityAware {
    private lateinit var channel: MethodChannel
    private lateinit var activeResult: Result

    private lateinit var activity: Activity
    private lateinit var context: Context

    private lateinit var paymentsClient: PaymentsClient

    private var paymentsEnvironment = WalletConstants.ENVIRONMENT_TEST

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        context = flutterPluginBinding.applicationContext

        channel = MethodChannel(flutterPluginBinding.binaryMessenger, CHANNEL)
        channel.setMethodCallHandler(this)
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    private fun invokeSuccessResult(success: Boolean = true) {
        val res = MadPay.Response.newBuilder().setSuccess(success).build()
        activeResult.success(res.toByteArray())
    }

    private fun invokeSuccessResult(@Nullable data: Map<String, String>?) {
        val res = MadPay.Response.newBuilder().setSuccess(true)
        if (data != null)
            res.putAllData(data)

        activeResult.success(res.build().toByteArray())
    }

    private fun invokeErrorResult(@Nullable errorCode: String?, @Nullable message: String?) {
        val res = MadPay.Response.newBuilder().setSuccess(false)
        if (errorCode != null)
            res.errorCode = errorCode
        if (message != null)
            res.message = message

        activeResult.success(res.build().toByteArray())
    }

    private fun invokeErrorResult(@Nullable errorCode: String?, @Nullable message: String?, @Nullable data: Map<String, String>?) {
        val res = MadPay.Response.newBuilder().setSuccess(false)
        if (errorCode != null)
            res.errorCode = errorCode
        if (message != null)
            res.message = message
        if (data != null)
            res.putAllData(data)

        activeResult.success(res.build().toByteArray())
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        activeResult = result

        val arguments = call.arguments as ByteArray?

        if (arguments == null && (call.method == SWITCH_ENVIRONMENT || call.method == CHECK_ACTIVE_CARD || call.method == PAYMENT)) {
            invokeErrorResult(INVALID_PARAMETERS_CODE, "Invalid parameters. \"Arguments\" is null")
            return
        }

        when (call.method) {
            SWITCH_ENVIRONMENT -> setEnvironment(MadPay.EnvironmentRequest.parseFrom(arguments))
            CHECK_PAYMENTS -> checkPayments()
            CHECK_ACTIVE_CARD -> checkActiveCard(MadPay.CheckActiveCardRequest.parseFrom(arguments))
            PAYMENT -> payment(MadPay.PaymentRequest.parseFrom(arguments))
            else -> invokeErrorResult(NOT_IMPLEMENTED_CODE, "Method not implemented")
        }
    }

    private fun setEnvironment(@NonNull arguments: MadPay.EnvironmentRequest) {
        paymentsEnvironment = when (arguments.environment) {
            MadPay.PaymentEnvironment.PRODUCTION -> {
                WalletConstants.ENVIRONMENT_PRODUCTION
            }
            else -> {
                WalletConstants.ENVIRONMENT_TEST
            }
        }
        createPaymentsClient()

        invokeSuccessResult()
    }

    private fun createCheckTask(@NonNull baseRequest: JSONObject) {
        val isReadyToPayRequest = IsReadyToPayRequest.fromJson(baseRequest.toString(4))
        val task = paymentsClient.isReadyToPay(isReadyToPayRequest)
        task.addOnCompleteListener {
            try {
                invokeSuccessResult(it.result!!)
            } catch (e: ApiException) {
                invokeErrorResult(INVALID_CHECK_CODE, e.message)
            }
        }
    }

    private fun checkPayments() {
        createCheckTask(RawMethods.getCheckMethod())
    }

    private fun checkActiveCard(@NonNull arguments: MadPay.CheckActiveCardRequest) {
        createCheckTask(RawMethods.getCheckActiveCardMethod(arguments.allowedPaymentNetworksList))
    }

    private fun payment(@NonNull arguments: MadPay.PaymentRequest) {
        if (arguments.parametersCase != MadPay.PaymentRequest.ParametersCase.GOOGLE || arguments.google == null) {
            invokeErrorResult(INVALID_PARAMETERS_CODE, "Invalid Payment parameters. " +
                    "\"Google\" parameter required")
            return
        }
        if (arguments.google.gatewayName.isNullOrEmpty() || arguments.google.gatewayMerchantId.isNullOrEmpty() ||
                arguments.currencyCode.isNullOrEmpty() || arguments.countryCode.isNullOrEmpty()) {
            invokeErrorResult(INVALID_PARAMETERS_CODE, "Invalid Payment parameters." +
                    "\ngatewayName: ${arguments.google.gatewayName}" +
                    "\ngatewayMerchantId: ${arguments.google.gatewayMerchantId}" +
                    "\ncurrencyCode: ${arguments.currencyCode}" +
                    "\ncountryCode: ${arguments.countryCode}")
            return
        }

        var totalPrice = 0.0
        arguments.paymentItemsList?.forEach {
            val price = it?.price
            if (price != null) {
                totalPrice += price
            }
        }

        if (totalPrice <= 0.0) {
            invokeErrorResult(ZERO_PRICE_CODE, "Total price cannot be zero or less than zero")
            return
        }

        val paymentRequestJson = RawMethods.getPaymentMethod(totalPrice, arguments.allowedPaymentNetworksList,
                arguments.google, arguments.google.emailRequired, arguments.currencyCode, arguments.countryCode)

        val paymentDataRequest = PaymentDataRequest.fromJson(paymentRequestJson.toString(4))

        if (paymentDataRequest != null) {
            val task = paymentsClient.loadPaymentData(paymentDataRequest)
            AutoResolveHelper.resolveTask(task, this.activity, LOAD_PAYMENT_DATA_REQUEST_CODE)
        }
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) = setActivity(binding)

    override fun onDetachedFromActivity() {}

    override fun onDetachedFromActivityForConfigChanges() {}

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) = setActivity(binding)

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        if (requestCode == LOAD_PAYMENT_DATA_REQUEST_CODE) {
            when (resultCode) {
                Activity.RESULT_OK -> {
                    data?.let {
                        PaymentData.getFromIntent(it)?.let { paymentData ->
                            val paymentDataJSONObject = JSONObject(paymentData.toJson())
                            (paymentDataJSONObject["paymentMethodData"] as? JSONObject)?.let { paymentMethodData ->
                                (paymentMethodData["tokenizationData"] as? JSONObject)?.let { tokenizationData ->
                                    (tokenizationData["token"] as? String)?.let { token ->
                                        val response: Map<String, String> = mapOf(TOKEN to token)
                                        invokeSuccessResult(response)
                                    }
                                }
                            }
                        }
                    }
                }
                Activity.RESULT_CANCELED -> invokeErrorResult(CANCELED_CODE, "Cancelled the payment")
                AutoResolveHelper.RESULT_ERROR -> {
                    val status = AutoResolveHelper.getStatusFromIntent(data)
                    val errorData: Map<String, String> = mapOf("statusCode" to status?.statusCode.toString(),
                            "statusMessage" to status?.statusMessage.toString())

                    invokeErrorResult(INVALID_PAYMENT_CODE, "Google Pay returned payment error", errorData)
                }
            }
        }

        return false
    }

    private fun setActivity(binding: ActivityPluginBinding) {
        this.activity = binding.activity
        binding.addActivityResultListener(this)
        createPaymentsClient()
    }

    private fun createPaymentsClient() {
        val walletOptions = Wallet.WalletOptions.Builder()
                .setEnvironment(paymentsEnvironment)
                .setTheme(WalletConstants.THEME_LIGHT)
                .build()
        this.paymentsClient = Wallet.getPaymentsClient(this.activity, walletOptions)
    }

}
