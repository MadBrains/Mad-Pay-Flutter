part of 'models.dart';

/// {@template payment_network}
/// One or more card networks that you support, also supported by the Apple / Google Pay.
/// {@endtemplate}
enum PaymentNetwork {
  /// Available on Apple Pay and Google Pay
  visa,

  /// Available on Apple Pay and Google Pay
  mastercard,

  /// Available on Apple Pay and Google Pay
  amex,

  /// Available on Apple Pay (iOS 9.2+) and Google Pay
  interac,

  /// Available on Apple Pay (iOS 9.0+) and Google Pay
  discover,

  /// Available on Apple Pay (iOS 10.1+) and Google Pay
  jcb,

  /// Available only on Apple Pay (iOS 12.0+)
  maestro,

  /// Available only on Apple Pay (iOS 12.0+)
  electron,

  /// Available on Apple Pay and Google Pay (iOS 14.5+)
  mir,

  /// Available only on Apple Pay (iOS 10.3-11.0 carteBancaire,
  /// iOS 11.0-11.2 carteBancaires, 11.2+ cartesBancaires)
  cartesbancarries,

  /// Available only on Apple Pay (iOS 9.2+)
  unionpay,

  /// Available only on Apple Pay (iOS 12.0+)
  eftpos,

  /// Available only on Apple Pay (iOS 12.1.1+)
  elo,

  /// Available only on Apple Pay (iOS 10.3+)
  idcredit,

  /// Available only on Apple Pay (iOS 12.1.1+)
  mada,

  /// Available only on Apple Pay (iOS 9.0+)
  privatelabel,

  /// Available only on Apple Pay (iOS 10.3+)
  quicpay,

  /// Available only on Apple Pay (iOS 10.1+)
  suica,

  /// Available only on Apple Pay (iOS 12.0+)
  vpay,

  /// Available only on Apple Pay (iOS 15.1+)
  dankort,

  /// Available only on Apple Pay (iOS 15.0+)
  nanaco,

  /// Available only on Apple Pay (iOS 15.0+)
  waon,

  /// Available only on Apple Pay (iOS 14.0+)
  girocard,

  /// Available only on Apple Pay (iOS 14.0+)
  barcode,
}

/// PaymentNetwork extension
extension PaymentNetworkX on PaymentNetwork {
  /// Mapped this model to proto model
  proto.PaymentNetwork get toProto =>
      proto.PaymentNetwork.valueOf(index) ?? proto.PaymentNetwork.VISA;
}
