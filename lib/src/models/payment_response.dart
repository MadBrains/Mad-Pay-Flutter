part of 'models.dart';

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
  String get token =>
      rawData?.deepSearch(Platform.isIOS ? kPaymentData : kToken) as String;
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
