///
//  Generated code. Do not modify.
//  source: apple.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'apple.pbenum.dart';

export 'apple.pbenum.dart';

class AppleParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AppleParameters',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'apple'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'merchantIdentifier')
    ..e<MerchantCapabilities>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'merchantCapabilities',
        $pb.PbFieldType.OE,
        defaultOrMaker: MerchantCapabilities.THREEDS,
        valueOf: MerchantCapabilities.valueOf,
        enumValues: MerchantCapabilities.values)
    ..pPS(
        3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportedCountries')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requiredBillingContactFields')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requiredShippingContactFields')
    ..aOM<Contact>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'billingContact', subBuilder: Contact.create)
    ..aOM<Contact>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shippingContact', subBuilder: Contact.create)
    ..pc<ShippingMethod>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shippingMethods', $pb.PbFieldType.PM, subBuilder: ShippingMethod.create)
    ..e<ShippingType>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shippingType', $pb.PbFieldType.OE, defaultOrMaker: ShippingType.DELIVERY, valueOf: ShippingType.valueOf, enumValues: ShippingType.values)
    ..a<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applicationData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  AppleParameters._() : super();
  factory AppleParameters({
    $core.String? merchantIdentifier,
    MerchantCapabilities? merchantCapabilities,
    $core.Iterable<$core.String>? supportedCountries,
    $core.Iterable<$core.String>? requiredBillingContactFields,
    $core.Iterable<$core.String>? requiredShippingContactFields,
    Contact? billingContact,
    Contact? shippingContact,
    $core.Iterable<ShippingMethod>? shippingMethods,
    ShippingType? shippingType,
    $core.List<$core.int>? applicationData,
  }) {
    final _result = create();
    if (merchantIdentifier != null) {
      _result.merchantIdentifier = merchantIdentifier;
    }
    if (merchantCapabilities != null) {
      _result.merchantCapabilities = merchantCapabilities;
    }
    if (supportedCountries != null) {
      _result.supportedCountries.addAll(supportedCountries);
    }
    if (requiredBillingContactFields != null) {
      _result.requiredBillingContactFields.addAll(requiredBillingContactFields);
    }
    if (requiredShippingContactFields != null) {
      _result.requiredShippingContactFields
          .addAll(requiredShippingContactFields);
    }
    if (billingContact != null) {
      _result.billingContact = billingContact;
    }
    if (shippingContact != null) {
      _result.shippingContact = shippingContact;
    }
    if (shippingMethods != null) {
      _result.shippingMethods.addAll(shippingMethods);
    }
    if (shippingType != null) {
      _result.shippingType = shippingType;
    }
    if (applicationData != null) {
      _result.applicationData = applicationData;
    }
    return _result;
  }
  factory AppleParameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppleParameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppleParameters clone() => AppleParameters()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppleParameters copyWith(void Function(AppleParameters) updates) =>
      super.copyWith((message) => updates(message as AppleParameters))
          as AppleParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppleParameters create() => AppleParameters._();
  AppleParameters createEmptyInstance() => create();
  static $pb.PbList<AppleParameters> createRepeated() =>
      $pb.PbList<AppleParameters>();
  @$core.pragma('dart2js:noInline')
  static AppleParameters getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppleParameters>(create);
  static AppleParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get merchantIdentifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set merchantIdentifier($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMerchantIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearMerchantIdentifier() => clearField(1);

  @$pb.TagNumber(2)
  MerchantCapabilities get merchantCapabilities => $_getN(1);
  @$pb.TagNumber(2)
  set merchantCapabilities(MerchantCapabilities v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMerchantCapabilities() => $_has(1);
  @$pb.TagNumber(2)
  void clearMerchantCapabilities() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get supportedCountries => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get requiredBillingContactFields => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get requiredShippingContactFields => $_getList(4);

  @$pb.TagNumber(6)
  Contact get billingContact => $_getN(5);
  @$pb.TagNumber(6)
  set billingContact(Contact v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasBillingContact() => $_has(5);
  @$pb.TagNumber(6)
  void clearBillingContact() => clearField(6);
  @$pb.TagNumber(6)
  Contact ensureBillingContact() => $_ensure(5);

  @$pb.TagNumber(7)
  Contact get shippingContact => $_getN(6);
  @$pb.TagNumber(7)
  set shippingContact(Contact v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasShippingContact() => $_has(6);
  @$pb.TagNumber(7)
  void clearShippingContact() => clearField(7);
  @$pb.TagNumber(7)
  Contact ensureShippingContact() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<ShippingMethod> get shippingMethods => $_getList(7);

  @$pb.TagNumber(9)
  ShippingType get shippingType => $_getN(8);
  @$pb.TagNumber(9)
  set shippingType(ShippingType v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasShippingType() => $_has(8);
  @$pb.TagNumber(9)
  void clearShippingType() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get applicationData => $_getN(9);
  @$pb.TagNumber(10)
  set applicationData($core.List<$core.int> v) {
    $_setBytes(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasApplicationData() => $_has(9);
  @$pb.TagNumber(10)
  void clearApplicationData() => clearField(10);
}

class Contact extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Contact',
          package: const $pb.PackageName(
              const $core.bool.fromEnvironment('protobuf.omit_message_names')
                  ? ''
                  : 'apple'),
          createEmptyInstance: create)
        ..aOS(
            1,
            const $core.bool.fromEnvironment('protobuf.omit_field_names')
                ? ''
                : 'emailAddress')
        ..aOM<PersonNameComponents>(
            2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name',
            subBuilder: PersonNameComponents.create)
        ..aOS(
            3,
            const $core.bool.fromEnvironment('protobuf.omit_field_names')
                ? ''
                : 'phoneNumber')
        ..aOM<PostalAddress>(
            4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postalAddress',
            subBuilder: PostalAddress.create)
        ..hasRequiredFields = false;

  Contact._() : super();
  factory Contact({
    $core.String? emailAddress,
    PersonNameComponents? name,
    $core.String? phoneNumber,
    PostalAddress? postalAddress,
  }) {
    final _result = create();
    if (emailAddress != null) {
      _result.emailAddress = emailAddress;
    }
    if (name != null) {
      _result.name = name;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (postalAddress != null) {
      _result.postalAddress = postalAddress;
    }
    return _result;
  }
  factory Contact.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Contact.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Contact clone() => Contact()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Contact copyWith(void Function(Contact) updates) =>
      super.copyWith((message) => updates(message as Contact))
          as Contact; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Contact create() => Contact._();
  Contact createEmptyInstance() => create();
  static $pb.PbList<Contact> createRepeated() => $pb.PbList<Contact>();
  @$core.pragma('dart2js:noInline')
  static Contact getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Contact>(create);
  static Contact? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get emailAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set emailAddress($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEmailAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmailAddress() => clearField(1);

  @$pb.TagNumber(2)
  PersonNameComponents get name => $_getN(1);
  @$pb.TagNumber(2)
  set name(PersonNameComponents v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
  @$pb.TagNumber(2)
  PersonNameComponents ensureName() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get phoneNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set phoneNumber($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPhoneNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneNumber() => clearField(3);

  @$pb.TagNumber(4)
  PostalAddress get postalAddress => $_getN(3);
  @$pb.TagNumber(4)
  set postalAddress(PostalAddress v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPostalAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearPostalAddress() => clearField(4);
  @$pb.TagNumber(4)
  PostalAddress ensurePostalAddress() => $_ensure(3);
}

class PersonNameComponents extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PersonNameComponents',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'apple'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'namePrefix')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'givenName')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'middleName')
    ..aOS(4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'familyName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nameSuffix')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickname')
    ..aOM<PersonNameComponents>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneticRepresentation', subBuilder: PersonNameComponents.create)
    ..hasRequiredFields = false;

  PersonNameComponents._() : super();
  factory PersonNameComponents({
    $core.String? namePrefix,
    $core.String? givenName,
    $core.String? middleName,
    $core.String? familyName,
    $core.String? nameSuffix,
    $core.String? nickname,
    PersonNameComponents? phoneticRepresentation,
  }) {
    final _result = create();
    if (namePrefix != null) {
      _result.namePrefix = namePrefix;
    }
    if (givenName != null) {
      _result.givenName = givenName;
    }
    if (middleName != null) {
      _result.middleName = middleName;
    }
    if (familyName != null) {
      _result.familyName = familyName;
    }
    if (nameSuffix != null) {
      _result.nameSuffix = nameSuffix;
    }
    if (nickname != null) {
      _result.nickname = nickname;
    }
    if (phoneticRepresentation != null) {
      _result.phoneticRepresentation = phoneticRepresentation;
    }
    return _result;
  }
  factory PersonNameComponents.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PersonNameComponents.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PersonNameComponents clone() =>
      PersonNameComponents()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PersonNameComponents copyWith(void Function(PersonNameComponents) updates) =>
      super.copyWith((message) => updates(message as PersonNameComponents))
          as PersonNameComponents; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PersonNameComponents create() => PersonNameComponents._();
  PersonNameComponents createEmptyInstance() => create();
  static $pb.PbList<PersonNameComponents> createRepeated() =>
      $pb.PbList<PersonNameComponents>();
  @$core.pragma('dart2js:noInline')
  static PersonNameComponents getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PersonNameComponents>(create);
  static PersonNameComponents? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get namePrefix => $_getSZ(0);
  @$pb.TagNumber(1)
  set namePrefix($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNamePrefix() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamePrefix() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get givenName => $_getSZ(1);
  @$pb.TagNumber(2)
  set givenName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGivenName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGivenName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get middleName => $_getSZ(2);
  @$pb.TagNumber(3)
  set middleName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMiddleName() => $_has(2);
  @$pb.TagNumber(3)
  void clearMiddleName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get familyName => $_getSZ(3);
  @$pb.TagNumber(4)
  set familyName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFamilyName() => $_has(3);
  @$pb.TagNumber(4)
  void clearFamilyName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get nameSuffix => $_getSZ(4);
  @$pb.TagNumber(5)
  set nameSuffix($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNameSuffix() => $_has(4);
  @$pb.TagNumber(5)
  void clearNameSuffix() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get nickname => $_getSZ(5);
  @$pb.TagNumber(6)
  set nickname($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasNickname() => $_has(5);
  @$pb.TagNumber(6)
  void clearNickname() => clearField(6);

  @$pb.TagNumber(7)
  PersonNameComponents get phoneticRepresentation => $_getN(6);
  @$pb.TagNumber(7)
  set phoneticRepresentation(PersonNameComponents v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPhoneticRepresentation() => $_has(6);
  @$pb.TagNumber(7)
  void clearPhoneticRepresentation() => clearField(7);
  @$pb.TagNumber(7)
  PersonNameComponents ensurePhoneticRepresentation() => $_ensure(6);
}

class PostalAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostalAddress',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'apple'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'street')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'city')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'state')
    ..aOS(
        4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postalCode')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isoCountryCode')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subAdministrativeArea')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subLocality')
    ..hasRequiredFields = false;

  PostalAddress._() : super();
  factory PostalAddress({
    $core.String? street,
    $core.String? city,
    $core.String? state,
    $core.String? postalCode,
    $core.String? country,
    $core.String? isoCountryCode,
    $core.String? subAdministrativeArea,
    $core.String? subLocality,
  }) {
    final _result = create();
    if (street != null) {
      _result.street = street;
    }
    if (city != null) {
      _result.city = city;
    }
    if (state != null) {
      _result.state = state;
    }
    if (postalCode != null) {
      _result.postalCode = postalCode;
    }
    if (country != null) {
      _result.country = country;
    }
    if (isoCountryCode != null) {
      _result.isoCountryCode = isoCountryCode;
    }
    if (subAdministrativeArea != null) {
      _result.subAdministrativeArea = subAdministrativeArea;
    }
    if (subLocality != null) {
      _result.subLocality = subLocality;
    }
    return _result;
  }
  factory PostalAddress.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostalAddress.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostalAddress clone() => PostalAddress()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostalAddress copyWith(void Function(PostalAddress) updates) =>
      super.copyWith((message) => updates(message as PostalAddress))
          as PostalAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostalAddress create() => PostalAddress._();
  PostalAddress createEmptyInstance() => create();
  static $pb.PbList<PostalAddress> createRepeated() =>
      $pb.PbList<PostalAddress>();
  @$core.pragma('dart2js:noInline')
  static PostalAddress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostalAddress>(create);
  static PostalAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get street => $_getSZ(0);
  @$pb.TagNumber(1)
  set street($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStreet() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreet() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get city => $_getSZ(1);
  @$pb.TagNumber(2)
  set city($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCity() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get state => $_getSZ(2);
  @$pb.TagNumber(3)
  set state($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get postalCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set postalCode($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPostalCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearPostalCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get country => $_getSZ(4);
  @$pb.TagNumber(5)
  set country($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCountry() => $_has(4);
  @$pb.TagNumber(5)
  void clearCountry() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get isoCountryCode => $_getSZ(5);
  @$pb.TagNumber(6)
  set isoCountryCode($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsoCountryCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsoCountryCode() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get subAdministrativeArea => $_getSZ(6);
  @$pb.TagNumber(7)
  set subAdministrativeArea($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSubAdministrativeArea() => $_has(6);
  @$pb.TagNumber(7)
  void clearSubAdministrativeArea() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get subLocality => $_getSZ(7);
  @$pb.TagNumber(8)
  set subLocality($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSubLocality() => $_has(7);
  @$pb.TagNumber(8)
  void clearSubLocality() => clearField(8);
}

class ShippingMethod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ShippingMethod',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'apple'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..a<$core.double>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'price',
        $pb.PbFieldType.OD)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'identifier')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'detail')
    ..hasRequiredFields = false;

  ShippingMethod._() : super();
  factory ShippingMethod({
    $core.String? name,
    $core.double? price,
    $core.String? identifier,
    $core.String? detail,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (price != null) {
      _result.price = price;
    }
    if (identifier != null) {
      _result.identifier = identifier;
    }
    if (detail != null) {
      _result.detail = detail;
    }
    return _result;
  }
  factory ShippingMethod.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ShippingMethod.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ShippingMethod clone() => ShippingMethod()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ShippingMethod copyWith(void Function(ShippingMethod) updates) =>
      super.copyWith((message) => updates(message as ShippingMethod))
          as ShippingMethod; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShippingMethod create() => ShippingMethod._();
  ShippingMethod createEmptyInstance() => create();
  static $pb.PbList<ShippingMethod> createRepeated() =>
      $pb.PbList<ShippingMethod>();
  @$core.pragma('dart2js:noInline')
  static ShippingMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShippingMethod>(create);
  static ShippingMethod? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get price => $_getN(1);
  @$pb.TagNumber(2)
  set price($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get identifier => $_getSZ(2);
  @$pb.TagNumber(3)
  set identifier($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIdentifier() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdentifier() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get detail => $_getSZ(3);
  @$pb.TagNumber(4)
  set detail($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDetail() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetail() => clearField(4);
}
