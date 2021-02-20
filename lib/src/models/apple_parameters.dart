part of 'models.dart';

/// {@macro apple_parameters}
class AppleParameters {
  /// {@template apple_parameters}
  /// Parameters for making a payment in Apple Pay
  /// {@endtemplate}
  AppleParameters({
    @required this.merchantIdentifier,
    this.merchantCapabilities,
    this.shippingType,
  });

  /// Your merchant identifier.
  final String merchantIdentifier;

  /// {@macro merchant_capabilities}
  final MerchantCapabilities merchantCapabilities;

  /// {@macro shipping_type}
  final ShippingType shippingType;
}

/// AppleParameters extension
extension AppleParametersX on AppleParameters {
  /// Mapped this model to proto model
  porto.AppleParameters get toProto => porto.AppleParameters(
        merchantIdentifier: merchantIdentifier,
        merchantCapabilities: merchantCapabilities.toProto,
        shippingType: shippingType.toProto,
      );
}

/// {@template merchant_capabilities}
/// Capabilities for processing payment.
/// {@endtemplate}
enum MerchantCapabilities {
  /// Support for the 3-D Secure protocol.
  threeds,

  /// Support for credit cards.
  credit,

  /// Support for debit cards.
  debit,

  /// Support for the EMV protocol.
  emv,
}

/// MerchantCapabilities extension
extension MerchantCapabilitiesX on MerchantCapabilities {
  /// Mapped this model to proto model
  porto.MerchantCapabilities get toProto => this != null
      ? porto.MerchantCapabilities.valueOf(index)
      : porto.MerchantCapabilities.THREEDS;
}

/// Complete list of valid shipping types.
enum ShippingType {
  /// Shipping the purchase to the provided address using a third-party shipping company.
  /// This is the default shipping type.
  shipping,

  /// Delivering the purchase by the seller (for example, pizza, flower, or furniture delivery)
  delivery,

  /// Picking up an item from the provided address by the service (for example, transportation or shipping services that provide home pickup).
  servicePickup,

  /// Store pickup of the purchase from the seller’s store.
  storePickup,
}

/// {@template shipping_type}
/// ShippingType extension
/// {@endtemplate}
extension ShippingTypeX on ShippingType {
  /// Mapped this model to proto model
  porto.ShippingType get toProto => this != null
      ? porto.ShippingType.valueOf(index)
      : porto.ShippingType.SHIPPING;
}
