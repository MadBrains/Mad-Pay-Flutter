part of 'models.dart';

/// {@macro google_parameters}
class GoogleParameters {
  /// {@template google_parameters}
  /// Parameters for making a payment in Google Pay
  /// {@endtemplate}
  GoogleParameters({
    @required this.gatewayName,
    @required this.gatewayMerchantId,
    this.merchantName,
    this.emailRequired,
    this.allowedCardsMethods,
  });

  /// Payment gateway
  ///
  /// Learn more: [Gateway](https://developers.google.com/pay/api/android/reference/request-objects?hl=ru#gateway)
  final String gatewayName;

  /// MerchantID obtained from your gateway account
  ///
  /// Learn more: [Gateway Merchant](https://developers.google.com/pay/api/android/reference/request-objects?hl=ru#gateway)
  final String gatewayMerchantId;

  /// Merchant name is rendered in the payment sheet.
  /// In TEST environment, or if a merchant isn't recognized,
  /// a “Pay Unverified Merchant” message is displayed in the payment sheet.
  final String merchantName;

  /// Set to `true` to request an email address.
  final bool emailRequired;

  /// {@macro card_auth_methods}
  final List<CardAuthMethods> allowedCardsMethods;
}

/// GoogleParameters extension
extension GoogleParametersX on GoogleParameters {
  /// Mapped this model to proto model
  porto.GoogleParameters get toProto => porto.GoogleParameters(
        allowedCardsMethods:
            allowedCardsMethods?.map((CardAuthMethods v) => v.toProto),
        merchantName: merchantName,
        gatewayName: gatewayName,
        gatewayMerchantId: gatewayMerchantId,
        emailRequired: emailRequired,
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
  porto.CardAuthMethods get toProto => this != null
      ? porto.CardAuthMethods.valueOf(index)
      : porto.CardAuthMethods.PAN_ONLY;
}
