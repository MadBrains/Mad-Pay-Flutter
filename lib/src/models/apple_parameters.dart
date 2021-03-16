part of 'models.dart';

/// {@macro apple_parameters}
class AppleParameters {
  /// {@template apple_parameters}
  /// Parameters for making a payment in Apple Pay
  /// {@endtemplate}
  AppleParameters({
    required this.merchantIdentifier,
    this.merchantCapabilities,
    this.supportedCountries,
    this.requiredBillingContactFields,
    this.requiredShippingContactFields,
    this.billingContact,
    this.shippingContact,
    this.shippingMethods,
    this.shippingType,
    this.applicationData,
  });

  /// Your merchant identifier.
  final String merchantIdentifier;

  /// {@macro merchant_capabilities}
  final MerchantCapabilities? merchantCapabilities;

  /// A list of ISO 3166 country codes to limit payments to cards from specific countries or regions.
  final Set<String>? supportedCountries;

  /// A list of fields that you need for a billing contact in order to process the transaction.
  final List<String>? requiredBillingContactFields;

  /// A list of fields that you need for a shipping contact in order to process the transaction.
  final List<String>? requiredShippingContactFields;

  /// A prepopulated billing address.
  final Contact? billingContact;

  /// A prepopulated shipping address.
  final Contact? shippingContact;

  /// An array of [ShippingMethod] objects that describe the supported shipping methods.
  final List<ShippingMethod>? shippingMethods;

  /// {@macro shipping_type}
  final ShippingType? shippingType;

  /// Application-specific data or state.
  final List<int>? applicationData;
}

/// AppleParameters extension
extension AppleParametersX on AppleParameters {
  /// Mapped this model to proto model
  proto.AppleParameters get toProto => proto.AppleParameters(
        merchantIdentifier: merchantIdentifier,
        merchantCapabilities: merchantCapabilities?.toProto,
        supportedCountries: supportedCountries,
        requiredBillingContactFields: requiredBillingContactFields,
        requiredShippingContactFields: requiredShippingContactFields,
        billingContact: billingContact?.toProto,
        shippingContact: shippingContact?.toProto,
        shippingMethods: shippingMethods?.map((ShippingMethod v) => v.toProto),
        shippingType: shippingType?.toProto,
        applicationData: applicationData,
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
  proto.MerchantCapabilities? get toProto =>
      proto.MerchantCapabilities.valueOf(index);
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
  proto.ShippingType? get toProto => proto.ShippingType.valueOf(index);
}

/// {@macro contact}
class Contact {
  /// {@template contact}
  /// Encapsulates contact information needed for billing and shipping.
  /// {@endtemplate}
  Contact({
    this.emailAddres,
    this.name,
    this.phoneNumber,
    this.postalAddress,
  });

  /// The contact’s email address, or null if the contact’s email is not needed for the transaction.
  final String? emailAddres;

  /// The contact’s first and last name, or null if the contact’s name is not needed for the transaction.
  final PersonNameComponents? name;

  /// The contact’s telephone number, or null if the contact’s phone number is not needed for the transaction.
  final String? phoneNumber;

  /// The contact’s full postal address.
  final PostalAddress? postalAddress;
}

/// Contact extension
extension ContactX on Contact {
  /// Mapped this model to proto model
  proto.Contact? get toProto => proto.Contact(
        emailAddres: emailAddres,
        name: name?.toProto,
        phoneNumber: phoneNumber,
        postalAddress: postalAddress?.toProto,
      );
}

/// {@macro person_name_components}
class PersonNameComponents {
  /// {@template person_name_components}
  /// The separate parts of a person's name, allowing locale-aware formatting.
  /// {@endtemplate}
  PersonNameComponents({
    this.namePrefix,
    this.givenName,
    this.middleName,
    this.familyName,
    this.nameSuffix,
    this.nickname,
    this.phoneticRepresentation,
  });

  /// The portion of a name’s full form of address that precedes the name itself (for example, “Dr.,” “Mr.,” “Ms.”).
  final String? namePrefix;

  /// Name bestowed upon an individual to differentiate them from other members of a group that share a family name (for example, “Johnathan”).
  final String? givenName;

  /// Secondary name bestowed upon an individual to differentiate them from others that have the same given name (for example, “Maple”).
  final String? middleName;

  /// Name bestowed upon an individual to denote membership in a group or family. (for example, “Appleseed”).
  final String? familyName;

  /// The portion of a name’s full form of address that follows the name itself (for example, “Esq.,” “Jr.,” “Ph.D.”).
  final String? nameSuffix;

  /// Name substituted for the purposes of familiarity (for example, "Johnny").
  final String? nickname;

  /// The phonetic representation name components of the receiver.
  final PersonNameComponents? phoneticRepresentation;
}

/// PersonNameComponents extension
extension PersonNameComponentsX on PersonNameComponents {
  /// Mapped this model to proto model
  proto.PersonNameComponents? get toProto => proto.PersonNameComponents(
        namePrefix: namePrefix,
        givenName: givenName,
        middleName: middleName,
        familyName: familyName,
        nameSuffix: nameSuffix,
        nickname: nickname,
        phoneticRepresentation: phoneticRepresentation?.toProto,
      );
}

/// {@macro postal_address}
class PostalAddress {
  /// {@template postal_address}
  ///
  /// {@endtemplate}
  PostalAddress({
    this.street,
    this.city,
    this.state,
    this.postalCode,
    this.country,
    this.isoCountryCode,
    this.subAdministrativeArea,
    this.subLocality,
  });

  /// The street name in a postal address.
  final String? street;

  /// The city name in a postal address.
  final String? city;

  /// The state name in a postal address.
  final String? state;

  /// The postal code in a postal address.
  final String? postalCode;

  /// The country or region name in a postal address.
  final String? country;

  /// The ISO country code for the country or region in a postal address, using the ISO 3166-1 alpha-2 standard.
  final String? isoCountryCode;

  /// The subadministrative area (such as a county or other region) in a postal address.
  final String? subAdministrativeArea;

  /// Additional information associated with the location, typically defined at the city or town level, in a postal address.
  final String? subLocality;
}

/// PostalAddress extension
extension PostalAddressX on PostalAddress {
  /// Mapped this model to proto model
  proto.PostalAddress? get toProto => proto.PostalAddress(
        street: street,
        city: city,
        state: state,
        postalCode: postalCode,
        country: country,
        isoCountryCode: isoCountryCode,
        subAdministrativeArea: subAdministrativeArea,
        subLocality: subLocality,
      );
}

/// {@macro shipping_method}
class ShippingMethod {
  /// {@template shipping_method}
  /// Defines a shipping method for delivering physical goods.
  /// {@endtemplate}
  ShippingMethod({
    required this.name,
    required this.price,
    this.detail,
    this.identifier,
  });

  /// The name of the item the user buys.
  final String name;

  /// The price of the item the user buys.
  ///
  /// Shaped relative to `currencyCode`
  final double price;

  /// A user-readable description of the shipping method.
  final String? detail;

  /// A unique identifier for the shipping method, used by the app.
  final String? identifier;
}

/// ShippingMethod extension
extension ShippingMethodX on ShippingMethod {
  /// Mapped this model to proto model
  proto.ShippingMethod get toProto => proto.ShippingMethod(
        name: name,
        price: price,
        detail: detail,
        identifier: identifier,
      );
}
