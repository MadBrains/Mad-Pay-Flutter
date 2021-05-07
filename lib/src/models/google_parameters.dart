part of 'models.dart';

/// {@macro google_parameters}
class GoogleParameters {
  /// {@template google_parameters}
  /// Parameters for making a payment in Google Pay
  /// {@endtemplate}
  GoogleParameters({
    required this.gatewayName,
    required this.gatewayMerchantId,
    required this.merchantId,
    this.merchantName,
    this.cardParameters,
    this.transactionInfo,
    this.emailRequired,
    this.shippingAddressRequired,
    this.shippingAddressParameters,
  });

  /// Payment gateway
  ///
  /// Learn more: [Gateway](https://developers.google.com/pay/api/android/reference/request-objects?hl=ru#gateway)
  final String gatewayName;

  /// MerchantID obtained from your gateway account
  ///
  /// Learn more: [Gateway Merchant](https://developers.google.com/pay/api/android/reference/request-objects?hl=ru#gateway)
  final String gatewayMerchantId;

  /// A Google merchant identifier issued after registration with the [Google Pay Business Console](https://pay.google.com/business/console/). 
  /// Required when PaymentsClient is initialized with an environment property of `PRODUCTION`.
  /// 
  /// In environment `TEST`, use the value `TEST`.
  final String merchantId;

  /// Merchant name is rendered in the payment sheet.
  /// In TEST environment, or if a merchant isn't recognized,
  /// a “Pay Unverified Merchant” message is displayed in the payment sheet.
  final String? merchantName;

  /// {@macro card_parameters}
  final CardParameters? cardParameters;

  /// {@macro transaction_info}
  final TransactionInfo? transactionInfo;

  /// Set to `true` to request an email address.
  final bool? emailRequired;

  /// Set to `true` to request a full shipping address.
  final bool? shippingAddressRequired;

  /// {@macro shipping_address_parameters}
  final ShippingAddressParameters? shippingAddressParameters;
}

/// GoogleParameters extension
extension GoogleParametersX on GoogleParameters {
  /// Mapped this model to proto model
  proto.GoogleParameters get toProto => proto.GoogleParameters(
        gatewayName: gatewayName,
        gatewayMerchantId: gatewayMerchantId,
        merchantId: merchantId,
        merchantName: merchantName,
        cardParameters: cardParameters?.toProto,
        transactionInfo: transactionInfo?.toProto,
        emailRequired: emailRequired,
        shippingAddressRequired: shippingAddressRequired,
        shippingAddressParameters: shippingAddressParameters?.toProto,
      );
}

/// {@macro card_parameters}
class CardParameters {
  /// {@template card_parameters}
  /// This object allows you to define the accepted payment card types.
  /// Google filters a payer's available payment cards based on your configured options.
  /// {@endtemplate}
  CardParameters({
    this.allowedCardsMethods,
    this.allowPrepaidCards = true,
    this.allowCreditCards = true,
    this.assuranceDetailsRequired,
    this.billingAddressRequired,
    this.billingAddressParameters,
  });

  /// {@macro card_auth_methods}
  final List<CardAuthMethods>? allowedCardsMethods;

  /// Set to false if you don't support prepaid cards.
  /// Default: The prepaid card class is supported for the card networks specified.
  final bool allowPrepaidCards;

  /// Set to false if you don't support credit cards.
  /// Default: The credit card class is supported for the card networks specified.
  ///
  /// Note: Required for UK Gambling merchants
  final bool allowCreditCards;

  /// Set to `true` to request assuranceDetails.
  /// This object provides information about the validation performed on the returned payment data.
  final bool? assuranceDetailsRequired;

  /// Set to `true` if you require a billing address.
  /// A billing address should only be requested if it's required to process the transaction.
  /// Additional data requests can increase friction in the checkout process and lead to a lower conversion rate.
  final bool? billingAddressRequired;

  /// {@macro billing_address_parameters}
  final BillingAddressParameters? billingAddressParameters;
}

/// CardParameters extension
extension CardParametersX on CardParameters {
  /// Mapped this model to proto model
  proto.CardParameters? get toProto => proto.CardParameters(
        allowedCardsMethods:
            allowedCardsMethods?.map((CardAuthMethods v) => v.toProto),
        allowPrepaidCards: allowPrepaidCards,
        allowCreditCards: allowCreditCards,
        assuranceDetailsRequired: assuranceDetailsRequired,
        billingAddressRequired: billingAddressRequired,
        billingAddressParameters: billingAddressParameters?.toProto,
      );
}

/// {@template card_auth_methods}
/// Fields supported to authenticate a card transaction.
/// {@endtemplate}
enum CardAuthMethods {
  /// This authentication method is associated with payment cards stored on file with the user's Google Account.
  /// Returned payment data includes personal account number (PAN) with the expiration month and the expiration year.
  panOnly,

  /// This authentication method is associated with cards stored as Android device tokens.
  /// Returned payment data includes a 3-D Secure (3DS) cryptogram generated on the device.
  threeds,
}

/// CardAuthMethods extension
extension CardAuthMethodsX on CardAuthMethods {
  /// Mapped this model to proto model
  proto.CardAuthMethods get toProto =>
      proto.CardAuthMethods.valueOf(index) ?? proto.CardAuthMethods.PAN_ONLY;
}

/// {@macro billing_address_parameters}
class BillingAddressParameters {
  /// {@template billing_address_parameters}
  /// This object allows you to set additional fields to be returned for a requested billing address.
  /// {@endtemplate}
  BillingAddressParameters({
    this.billingFormat,
    this.phoneNumberRequired,
  });

  /// {@macro billing_format}
  final BillingFormat? billingFormat;

  /// Set to `true` if a phone number is required to process the transaction.
  final bool? phoneNumberRequired;
}

/// BillingAddressParameters extension
extension BillingAddressParametersX on BillingAddressParameters {
  /// Mapped this model to proto model
  proto.BillingAddressParameters? get toProto => proto.BillingAddressParameters(
        billingFormat: billingFormat?.toProto,
        phoneNumberRequired: phoneNumberRequired,
      );
}

/// {@template billing_format}
/// This object allows you to set additional fields to be returned for a requested billing address.
/// {@endtemplate}
enum BillingFormat {
  /// Name, country code, and postal code (default).
  min,

  /// Name, street address, locality, region, country code, and postal code.
  full,
}

/// BillingFormat extension
extension BillingFormatX on BillingFormat {
  /// Mapped this model to proto model
  proto.BillingFormat? get toProto =>
      proto.BillingFormat.valueOf(index) ?? proto.BillingFormat.MIN;
}

/// {@macro transaction_info}
class TransactionInfo {
  /// {@template transaction_info}
  /// This object describes a transaction that determines a payer's ability to pay. It's used to present a payment authorization dialog.
  /// The following table details the properties of the object.
  /// {@endtemplate}
  TransactionInfo({
    this.transactionId,
    this.totalPriceStatus,
    this.totalPriceLabel,
    this.checkoutOption,
  });

  /// A unique ID that identifies a transaction attempt.
  /// Merchants can use an existing ID or generate a specific one for Google Pay transaction attempts.
  /// This field is required when you send callbacks to the Google Transaction Events API.
  String? transactionId;

  /// {@macro total_price_status}
  TotalPriceStatus? totalPriceStatus;

  /// Custom label for the total price within the display items.
  String? totalPriceLabel;

  /// {@macro checkout_option}
  CheckoutOption? checkoutOption;
}

/// TransactionInfo extension
extension TransactionInfoX on TransactionInfo {
  /// Mapped this model to proto model
  proto.TransactionInfo? get toProto => proto.TransactionInfo(
        transactionId: transactionId,
        totalPriceStatus: totalPriceStatus?.toProto,
        totalPriceLabel: totalPriceLabel,
        checkoutOption: checkoutOption?.toProto,
      );
}

/// {@template total_price_status}
/// The status of the total price
/// {@endtemplate}
enum TotalPriceStatus {
  /// Total price doesn't change from the amount presented to the shopper (default).
  ///
  /// Also known as: `final`
  byFinal,

  /// Total price might adjust based on the details of the response, such as sales tax collected that's based on a billing address.
  estimated,

  /// Use this property for a capability check.
  ///
  /// Warning: Don't use this property if the transaction is processed in an EEA country or any other country that's subject to SCA.
  notCurrentlyKnown,
}

/// TotalPriceStatus extension
extension TotalPriceStatusX on TotalPriceStatus {
  /// Mapped this model to proto model
  proto.TotalPriceStatus? get toProto =>
      proto.TotalPriceStatus.valueOf(index) ?? proto.TotalPriceStatus.FINAL;
}

/// {@template checkout_option}
/// Affects the submit button text displayed in the Google Pay payment sheet.
/// {@endtemplate}
enum CheckoutOption {
  /// Standard text applies for the given totalPriceStatus (default).
  ///
  /// Also known as: `default`
  byDefault,

  /// The selected payment method is charged immediately after the payer confirms their selections.
  /// This option is only available when totalPriceStatus is set to FINAL.
  completeImmediatePurchase,
}

/// CheckoutOption extension
extension CheckoutOptionX on CheckoutOption {
  /// Mapped this model to proto model
  proto.CheckoutOption? get toProto =>
      proto.CheckoutOption.valueOf(index) ?? proto.CheckoutOption.DEFAULT;
}

/// {@macro shipping_address_parameters}
class ShippingAddressParameters {
  /// {@template shipping_address_parameters}
  /// This object is used to set shipping restrictions.
  /// {@endtemplate}
  ShippingAddressParameters({
    this.allowedCountryCodes,
    this.phoneNumberRequired,
  });

  /// ISO 3166-1 alpha-2 country code values of the countries where shipping is allowed.
  /// If this object isn't specified, all shipping address countries are allowed.
  List<String>? allowedCountryCodes;

  /// Set to true if a phone number is required for the provided shipping address.
  bool? phoneNumberRequired;
}

/// ShippingAddressParameters extension
extension ShippingAddressParametersX on ShippingAddressParameters {
  /// Mapped this model to proto model
  proto.ShippingAddressParameters? get toProto =>
      proto.ShippingAddressParameters(
        allowedCountryCodes: allowedCountryCodes,
        phoneNumberRequired: phoneNumberRequired,
      );
}
