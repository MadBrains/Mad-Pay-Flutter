part of 'models.dart';

/// {@macro payment_item}
class PaymentItem {
  /// {@template payment_item}
  /// Item information
  /// {@endtemplate}
  PaymentItem({
    required this.name,
    required this.price,
  });

  /// The name of the item the user buys.
  final String name;

  /// The price of the item the user buys.
  ///
  /// Shaped relative to `currencyCode`
  final double price;
}

/// PaymentItem extension
extension PaymentItemX on PaymentItem {
  /// Mapped this model to proto model
  porto.PaymentItem get toProto => porto.PaymentItem(name: name, price: price);
}
