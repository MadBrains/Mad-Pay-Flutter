import Flutter
import UIKit
import PassKit

@available(iOS 10.0, *)
public class SwiftMadPayIosPlugin: NSObject, FlutterPlugin {
    private var activeResult: FlutterResult?
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let messenger = registrar.messenger()
        
        let channel = FlutterMethodChannel(name: Constants.channel, binaryMessenger: messenger)
        registrar.addMethodCallDelegate(SwiftMadPayIosPlugin(), channel: channel)
        
        let buttonFactory = ApplePayButtonViewFactory(messenger: messenger)
        registrar.register(buttonFactory, withId: Constants.buttonChannel)
    }
    
    func invokeSuccessResult(success: Bool = true, data: Data? = nil) {
        guard (try? activeResult?(Response.with({ (res) in
            res.success = success
            if let data = data {
                res.data = data
            }
        }).serializedData())) != nil else {
            return
        }
    }
    
    func invokeErrorResult(success: Bool = false, errorCode: String? = nil, message: String? = nil) {
        guard (try? activeResult?(Response.with({ (res) in
            res.success = success
            if let errorCode = errorCode {
                res.errorCode = errorCode
            }
            if let message = message {
                res.message = message
            }
        }).serializedData())) != nil else {
            return
        }
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        activeResult = result
        
        guard let arguments = (call.arguments as? Flutter.FlutterStandardTypedData?)??.data else {
            invokeErrorResult(errorCode: Constants.invalidParametersCode, message: "Invalid parameters. \"Arguments\" is null")
            return
        }
        
        switch call.method {
        case Constants.checkPayments: checkPayments()
        case Constants.checkActiveCard: try? checkActiveCard(arguments: CheckActiveCardRequest(serializedData: arguments))
        case Constants.payment: try? payment(arguments: PaymentRequest(serializedData: arguments))
        default:
            invokeErrorResult(errorCode: Constants.notImplementedCode, message: "Method \(call.method) not implemented")
        }
    }
    
    func checkPayments() {
        let canMakePayment = PKPaymentAuthorizationController.canMakePayments()
        invokeSuccessResult(success: canMakePayment)
    }
    
    func checkActiveCard(arguments: CheckActiveCardRequest) {
        let canMakePayments = PKPaymentAuthorizationController.canMakePayments(
            usingNetworks: PaymentNetworkHelper.getPaymentNetworks(arguments.allowedPaymentNetworks))
        
        invokeSuccessResult(success: canMakePayments)
    }
    
    func payment(arguments: PaymentRequest) {
        if (arguments.parameters == nil) {
            invokeErrorResult(errorCode: Constants.invalidParametersCode, message: "Invalid Payment parameters. \"Apple\" parameter required")
            return
        }
        
        if (arguments.apple.merchantIdentifier.isEmpty || arguments.currencyCode.isEmpty || arguments.countryCode.isEmpty) {
            invokeErrorResult(errorCode: Constants.invalidParametersCode, message: """
                                                                                   Invalid Payment parameters. 
                                                                                   merchantIdentifier: \(arguments.apple.merchantIdentifier) 
                                                                                   currencyCode: \(arguments.currencyCode) 
                                                                                   countryCode: \(arguments.countryCode)
                                                                                   """)
            return
        }
        
        var paymentNetworks = PaymentNetworkHelper.getPaymentNetworks(arguments.allowedPaymentNetworks)
        paymentNetworks = paymentNetworks.isEmpty ? PKPaymentRequest.availableNetworks() : paymentNetworks
        
        let paymentRequest = PKPaymentRequest()
        paymentRequest.paymentSummaryItems = PaymentNetworkHelper.getPaymentSummaryItem(arguments.paymentItems)
        paymentRequest.supportedNetworks = paymentNetworks
        paymentRequest.merchantIdentifier = arguments.apple.merchantIdentifier
        paymentRequest.countryCode = arguments.countryCode
        paymentRequest.currencyCode = arguments.currencyCode
        paymentRequest.merchantCapabilities = PaymentNetworkHelper.getMerchantCapabilities(arguments.apple.merchantCapabilities)
        paymentRequest.billingContact = PaymentNetworkHelper.getContact(arguments.apple.billingContact)
        paymentRequest.shippingContact = PaymentNetworkHelper.getContact(arguments.apple.shippingContact)
        paymentRequest.shippingMethods = PaymentNetworkHelper.getShippingMethods(arguments.apple.shippingMethods)
        paymentRequest.shippingType = PaymentNetworkHelper.getShippingType(arguments.apple.shippingType)
        
        if !arguments.apple.applicationData.isEmpty {
            paymentRequest.applicationData = arguments.apple.applicationData
        }
        
        if #available(iOS 11.0, *) {
            if !arguments.apple.requiredBillingContactFields.isEmpty {
                paymentRequest.requiredBillingContactFields = PaymentNetworkHelper.getContactFields(arguments.apple.requiredBillingContactFields)
            }
            if !arguments.apple.requiredShippingContactFields.isEmpty {
                paymentRequest.requiredShippingContactFields = PaymentNetworkHelper.getContactFields(arguments.apple.requiredShippingContactFields)
            }
        }
        
        let paymentController = PKPaymentAuthorizationController(paymentRequest: paymentRequest)
        paymentController.delegate = self
        paymentController.present(completion: nil)
    }
    
    private func paymentResult(pkPayment: PKPayment?) {
        if let payment = pkPayment {
            let jsonEncoder = JSONEncoder()
            guard let jsonData = try? jsonEncoder.encode(payment) else {
                invokeErrorResult(errorCode: Constants.serializationCode, message: "Payment result serialization failed")
                return
            }
            let paymentResult = String(data: jsonData, encoding: .utf8)
            invokeSuccessResult(data: paymentResult?.data(using: .utf8))
        } else {
            invokeErrorResult(errorCode: Constants.cancelledCode, message: "User cancelled the payment")
        }
    }
}

@available(iOS 10.0, *)
extension SwiftMadPayIosPlugin: PKPaymentAuthorizationControllerDelegate {
    public func paymentAuthorizationControllerDidFinish(_ controller: PKPaymentAuthorizationController) {
        paymentResult(pkPayment: nil)
        controller.dismiss(completion: nil)
    }
    
    @available(iOS 11.0, *)
    public func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didAuthorizePayment payment: PKPayment, handler completion: @escaping (PKPaymentAuthorizationResult) -> Void) {
        paymentResult(pkPayment: payment)
        completion(PKPaymentAuthorizationResult(status: .success, errors: nil))
    }
}
