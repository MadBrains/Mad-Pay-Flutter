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

  /// Available on Apple Pay and Google Pay
  interac,

  /// Available on Apple Pay and Google Pay
  discover,

  /// Available on Apple Pay and Google Pay
  jcb,

  /// Available only on Apple Pay
  maestro,

  /// Available only on Apple Pay
  electron,

  /// Not supported
  mir,

  /// Available only on Apple Pay
  cartesbancarries,

  /// Available only on Apple Pay
  unionpay,

  /// Available only on Apple Pay
  eftpos,

  /// Available only on Apple Pay
  elo,

  /// Available only on Apple Pay
  idcredit,

  /// Available only on Apple Pay
  mada,

  /// Available only on Apple Pay
  privatelabel,

  /// Available only on Apple Pay
  quicpay,

  /// Available only on Apple Pay
  suica,

  /// Available only on Apple Pay
  vpay
}

/// PaymentNetwork extension
extension PaymentNetworkX on PaymentNetwork {
  /// Mapped this model to proto model
  proto.PaymentNetwork get toProto =>
      proto.PaymentNetwork.valueOf(index) ?? proto.PaymentNetwork.VISA;
}
