part of 'models.dart';

/// {@macro payment_request}
class PaymentRequest {
  /// Request all data for `processingPayment`.
  factory PaymentRequest({
    required AppleParameters apple,
    required GoogleParameters google,
    required String currencyCode,
    required String countryCode,
    required List<PaymentItem> paymentItems,
    List<PaymentNetwork>? paymentNetworks,
  }) =>
      PaymentRequest._(
        apple: apple,
        google: google,
        currencyCode: currencyCode,
        countryCode: countryCode,
        paymentItems: paymentItems,
        paymentNetworks: paymentNetworks,
      );

  /// Request apple data for `processingPayment`.
  factory PaymentRequest.apple({
    required AppleParameters apple,
    required String currencyCode,
    required String countryCode,
    required List<PaymentItem> paymentItems,
    List<PaymentNetwork>? paymentNetworks,
  }) =>
      PaymentRequest._(
        apple: apple,
        currencyCode: currencyCode,
        countryCode: countryCode,
        paymentItems: paymentItems,
        paymentNetworks: paymentNetworks,
      );

  /// Request google data for `processingPayment`.
  factory PaymentRequest.google({
    required GoogleParameters google,
    required String currencyCode,
    required String countryCode,
    required List<PaymentItem> paymentItems,
    List<PaymentNetwork>? paymentNetworks,
  }) =>
      PaymentRequest._(
        google: google,
        currencyCode: currencyCode,
        countryCode: countryCode,
        paymentItems: paymentItems,
        paymentNetworks: paymentNetworks,
      );

  /// {@template payment_request}
  /// Request data for `processingPayment`.
  /// {@endtemplate}
  const PaymentRequest._({
    required this.currencyCode,
    required this.countryCode,
    required this.paymentItems,
    this.google,
    this.apple,
    this.paymentNetworks,
  });

  /// {@macro google_parameters}
  final GoogleParameters? google;

  /// {@macro apple_parameters}
  final AppleParameters? apple;

  /// Currency code
  final String currencyCode;

  /// Country code
  final String countryCode;

  /// {@macro payment_item}
  final List<PaymentItem> paymentItems;

  /// {@macro payment_network}
  final List<PaymentNetwork>? paymentNetworks;
}

/// {@macro payment_response}
class PaymentResponse {
  /// {@template payment_response}
  /// Response from `processingPayment`, contains raw data.
  /// {@endtemplate}
  PaymentResponse({
    required this.rawData,
  });

  /// Raw payment data
  final Map<String, dynamic>? rawData;

  /// Payment token
  String get token => rawData?.deepSearch(
          defaultTargetPlatform == TargetPlatform.iOS ? kPaymentData : kToken)
      as String;
}

extension _MapX<K, V> on Map<K, V> {
  dynamic deepSearch(K key) {
    if (this[key] != null) return this[key];

    for (final dynamic value in values) {
      if (value is Map) {
        return value.deepSearch(key);
      }
    }
  }
}
