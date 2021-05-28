///
//  Generated code. Do not modify.
//  source: google.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google.pbenum.dart';

export 'google.pbenum.dart';

class GoogleParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GoogleParameters',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gatewayName')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gatewayMerchantId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'merchantName')
    ..aOS(
        4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'merchantId')
    ..aOM<CardParameters>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardParameters', subBuilder: CardParameters.create)
    ..aOM<TransactionInfo>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionInfo', subBuilder: TransactionInfo.create)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailRequired')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shippingAddressRequired')
    ..aOM<ShippingAddressParameters>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shippingAddressParameters', subBuilder: ShippingAddressParameters.create)
    ..hasRequiredFields = false;

  GoogleParameters._() : super();
  factory GoogleParameters({
    $core.String? gatewayName,
    $core.String? gatewayMerchantId,
    $core.String? merchantName,
    $core.String? merchantId,
    CardParameters? cardParameters,
    TransactionInfo? transactionInfo,
    $core.bool? emailRequired,
    $core.bool? shippingAddressRequired,
    ShippingAddressParameters? shippingAddressParameters,
  }) {
    final _result = create();
    if (gatewayName != null) {
      _result.gatewayName = gatewayName;
    }
    if (gatewayMerchantId != null) {
      _result.gatewayMerchantId = gatewayMerchantId;
    }
    if (merchantName != null) {
      _result.merchantName = merchantName;
    }
    if (merchantId != null) {
      _result.merchantId = merchantId;
    }
    if (cardParameters != null) {
      _result.cardParameters = cardParameters;
    }
    if (transactionInfo != null) {
      _result.transactionInfo = transactionInfo;
    }
    if (emailRequired != null) {
      _result.emailRequired = emailRequired;
    }
    if (shippingAddressRequired != null) {
      _result.shippingAddressRequired = shippingAddressRequired;
    }
    if (shippingAddressParameters != null) {
      _result.shippingAddressParameters = shippingAddressParameters;
    }
    return _result;
  }
  factory GoogleParameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GoogleParameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GoogleParameters clone() => GoogleParameters()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GoogleParameters copyWith(void Function(GoogleParameters) updates) =>
      super.copyWith((message) => updates(message as GoogleParameters))
          as GoogleParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GoogleParameters create() => GoogleParameters._();
  GoogleParameters createEmptyInstance() => create();
  static $pb.PbList<GoogleParameters> createRepeated() =>
      $pb.PbList<GoogleParameters>();
  @$core.pragma('dart2js:noInline')
  static GoogleParameters getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GoogleParameters>(create);
  static GoogleParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gatewayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set gatewayName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGatewayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearGatewayName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get gatewayMerchantId => $_getSZ(1);
  @$pb.TagNumber(2)
  set gatewayMerchantId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGatewayMerchantId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGatewayMerchantId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get merchantName => $_getSZ(2);
  @$pb.TagNumber(3)
  set merchantName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMerchantName() => $_has(2);
  @$pb.TagNumber(3)
  void clearMerchantName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get merchantId => $_getSZ(3);
  @$pb.TagNumber(4)
  set merchantId($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMerchantId() => $_has(3);
  @$pb.TagNumber(4)
  void clearMerchantId() => clearField(4);

  @$pb.TagNumber(5)
  CardParameters get cardParameters => $_getN(4);
  @$pb.TagNumber(5)
  set cardParameters(CardParameters v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCardParameters() => $_has(4);
  @$pb.TagNumber(5)
  void clearCardParameters() => clearField(5);
  @$pb.TagNumber(5)
  CardParameters ensureCardParameters() => $_ensure(4);

  @$pb.TagNumber(6)
  TransactionInfo get transactionInfo => $_getN(5);
  @$pb.TagNumber(6)
  set transactionInfo(TransactionInfo v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTransactionInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearTransactionInfo() => clearField(6);
  @$pb.TagNumber(6)
  TransactionInfo ensureTransactionInfo() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.bool get emailRequired => $_getBF(6);
  @$pb.TagNumber(7)
  set emailRequired($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasEmailRequired() => $_has(6);
  @$pb.TagNumber(7)
  void clearEmailRequired() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get shippingAddressRequired => $_getBF(7);
  @$pb.TagNumber(8)
  set shippingAddressRequired($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasShippingAddressRequired() => $_has(7);
  @$pb.TagNumber(8)
  void clearShippingAddressRequired() => clearField(8);

  @$pb.TagNumber(9)
  ShippingAddressParameters get shippingAddressParameters => $_getN(8);
  @$pb.TagNumber(9)
  set shippingAddressParameters(ShippingAddressParameters v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasShippingAddressParameters() => $_has(8);
  @$pb.TagNumber(9)
  void clearShippingAddressParameters() => clearField(9);
  @$pb.TagNumber(9)
  ShippingAddressParameters ensureShippingAddressParameters() => $_ensure(8);
}

class CardParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CardParameters',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google'),
      createEmptyInstance: create)
    ..pc<CardAuthMethods>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'allowedCardsMethods',
        $pb.PbFieldType.PE,
        valueOf: CardAuthMethods.valueOf,
        enumValues: CardAuthMethods.values)
    ..aOB(2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowPrepaidCards')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowCreditCards')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assuranceDetailsRequired')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'billingAddressRequired')
    ..aOM<BillingAddressParameters>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'billingAddressParameters', subBuilder: BillingAddressParameters.create)
    ..hasRequiredFields = false;

  CardParameters._() : super();
  factory CardParameters({
    $core.Iterable<CardAuthMethods>? allowedCardsMethods,
    $core.bool? allowPrepaidCards,
    $core.bool? allowCreditCards,
    $core.bool? assuranceDetailsRequired,
    $core.bool? billingAddressRequired,
    BillingAddressParameters? billingAddressParameters,
  }) {
    final _result = create();
    if (allowedCardsMethods != null) {
      _result.allowedCardsMethods.addAll(allowedCardsMethods);
    }
    if (allowPrepaidCards != null) {
      _result.allowPrepaidCards = allowPrepaidCards;
    }
    if (allowCreditCards != null) {
      _result.allowCreditCards = allowCreditCards;
    }
    if (assuranceDetailsRequired != null) {
      _result.assuranceDetailsRequired = assuranceDetailsRequired;
    }
    if (billingAddressRequired != null) {
      _result.billingAddressRequired = billingAddressRequired;
    }
    if (billingAddressParameters != null) {
      _result.billingAddressParameters = billingAddressParameters;
    }
    return _result;
  }
  factory CardParameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CardParameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CardParameters clone() => CardParameters()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CardParameters copyWith(void Function(CardParameters) updates) =>
      super.copyWith((message) => updates(message as CardParameters))
          as CardParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CardParameters create() => CardParameters._();
  CardParameters createEmptyInstance() => create();
  static $pb.PbList<CardParameters> createRepeated() =>
      $pb.PbList<CardParameters>();
  @$core.pragma('dart2js:noInline')
  static CardParameters getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardParameters>(create);
  static CardParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CardAuthMethods> get allowedCardsMethods => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get allowPrepaidCards => $_getBF(1);
  @$pb.TagNumber(2)
  set allowPrepaidCards($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAllowPrepaidCards() => $_has(1);
  @$pb.TagNumber(2)
  void clearAllowPrepaidCards() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get allowCreditCards => $_getBF(2);
  @$pb.TagNumber(3)
  set allowCreditCards($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAllowCreditCards() => $_has(2);
  @$pb.TagNumber(3)
  void clearAllowCreditCards() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get assuranceDetailsRequired => $_getBF(3);
  @$pb.TagNumber(4)
  set assuranceDetailsRequired($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAssuranceDetailsRequired() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssuranceDetailsRequired() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get billingAddressRequired => $_getBF(4);
  @$pb.TagNumber(5)
  set billingAddressRequired($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBillingAddressRequired() => $_has(4);
  @$pb.TagNumber(5)
  void clearBillingAddressRequired() => clearField(5);

  @$pb.TagNumber(6)
  BillingAddressParameters get billingAddressParameters => $_getN(5);
  @$pb.TagNumber(6)
  set billingAddressParameters(BillingAddressParameters v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasBillingAddressParameters() => $_has(5);
  @$pb.TagNumber(6)
  void clearBillingAddressParameters() => clearField(6);
  @$pb.TagNumber(6)
  BillingAddressParameters ensureBillingAddressParameters() => $_ensure(5);
}

class BillingAddressParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BillingAddressParameters',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google'),
      createEmptyInstance: create)
    ..e<BillingFormat>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'billingFormat',
        $pb.PbFieldType.OE,
        defaultOrMaker: BillingFormat.MIN,
        valueOf: BillingFormat.valueOf,
        enumValues: BillingFormat.values)
    ..aOB(2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumberRequired')
    ..hasRequiredFields = false;

  BillingAddressParameters._() : super();
  factory BillingAddressParameters({
    BillingFormat? billingFormat,
    $core.bool? phoneNumberRequired,
  }) {
    final _result = create();
    if (billingFormat != null) {
      _result.billingFormat = billingFormat;
    }
    if (phoneNumberRequired != null) {
      _result.phoneNumberRequired = phoneNumberRequired;
    }
    return _result;
  }
  factory BillingAddressParameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BillingAddressParameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BillingAddressParameters clone() =>
      BillingAddressParameters()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BillingAddressParameters copyWith(
          void Function(BillingAddressParameters) updates) =>
      super.copyWith((message) => updates(message as BillingAddressParameters))
          as BillingAddressParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BillingAddressParameters create() => BillingAddressParameters._();
  BillingAddressParameters createEmptyInstance() => create();
  static $pb.PbList<BillingAddressParameters> createRepeated() =>
      $pb.PbList<BillingAddressParameters>();
  @$core.pragma('dart2js:noInline')
  static BillingAddressParameters getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BillingAddressParameters>(create);
  static BillingAddressParameters? _defaultInstance;

  @$pb.TagNumber(1)
  BillingFormat get billingFormat => $_getN(0);
  @$pb.TagNumber(1)
  set billingFormat(BillingFormat v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBillingFormat() => $_has(0);
  @$pb.TagNumber(1)
  void clearBillingFormat() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get phoneNumberRequired => $_getBF(1);
  @$pb.TagNumber(2)
  set phoneNumberRequired($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPhoneNumberRequired() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhoneNumberRequired() => clearField(2);
}

class TransactionInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransactionInfo',
          package: const $pb.PackageName(
              const $core.bool.fromEnvironment('protobuf.omit_message_names')
                  ? ''
                  : 'google'),
          createEmptyInstance: create)
        ..aOS(
            1,
            const $core.bool.fromEnvironment('protobuf.omit_field_names')
                ? ''
                : 'transactionId')
        ..e<TotalPriceStatus>(
            2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalPriceStatus', $pb.PbFieldType.OE,
            defaultOrMaker: TotalPriceStatus.FINAL,
            valueOf: TotalPriceStatus.valueOf,
            enumValues: TotalPriceStatus.values)
        ..aOS(
            4,
            const $core.bool.fromEnvironment('protobuf.omit_field_names')
                ? ''
                : 'totalPriceLabel')
        ..e<CheckoutOption>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'checkoutOption', $pb.PbFieldType.OE,
            defaultOrMaker: CheckoutOption.DEFAULT,
            valueOf: CheckoutOption.valueOf,
            enumValues: CheckoutOption.values)
        ..hasRequiredFields = false;

  TransactionInfo._() : super();
  factory TransactionInfo({
    $core.String? transactionId,
    TotalPriceStatus? totalPriceStatus,
    $core.String? totalPriceLabel,
    CheckoutOption? checkoutOption,
  }) {
    final _result = create();
    if (transactionId != null) {
      _result.transactionId = transactionId;
    }
    if (totalPriceStatus != null) {
      _result.totalPriceStatus = totalPriceStatus;
    }
    if (totalPriceLabel != null) {
      _result.totalPriceLabel = totalPriceLabel;
    }
    if (checkoutOption != null) {
      _result.checkoutOption = checkoutOption;
    }
    return _result;
  }
  factory TransactionInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransactionInfo clone() => TransactionInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransactionInfo copyWith(void Function(TransactionInfo) updates) =>
      super.copyWith((message) => updates(message as TransactionInfo))
          as TransactionInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionInfo create() => TransactionInfo._();
  TransactionInfo createEmptyInstance() => create();
  static $pb.PbList<TransactionInfo> createRepeated() =>
      $pb.PbList<TransactionInfo>();
  @$core.pragma('dart2js:noInline')
  static TransactionInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionInfo>(create);
  static TransactionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transactionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transactionId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);

  @$pb.TagNumber(2)
  TotalPriceStatus get totalPriceStatus => $_getN(1);
  @$pb.TagNumber(2)
  set totalPriceStatus(TotalPriceStatus v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTotalPriceStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalPriceStatus() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get totalPriceLabel => $_getSZ(2);
  @$pb.TagNumber(4)
  set totalPriceLabel($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTotalPriceLabel() => $_has(2);
  @$pb.TagNumber(4)
  void clearTotalPriceLabel() => clearField(4);

  @$pb.TagNumber(5)
  CheckoutOption get checkoutOption => $_getN(3);
  @$pb.TagNumber(5)
  set checkoutOption(CheckoutOption v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCheckoutOption() => $_has(3);
  @$pb.TagNumber(5)
  void clearCheckoutOption() => clearField(5);
}

class ShippingAddressParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ShippingAddressParameters',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'allowedCountryCodes')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'phoneNumberRequired')
    ..hasRequiredFields = false;

  ShippingAddressParameters._() : super();
  factory ShippingAddressParameters({
    $core.Iterable<$core.String>? allowedCountryCodes,
    $core.bool? phoneNumberRequired,
  }) {
    final _result = create();
    if (allowedCountryCodes != null) {
      _result.allowedCountryCodes.addAll(allowedCountryCodes);
    }
    if (phoneNumberRequired != null) {
      _result.phoneNumberRequired = phoneNumberRequired;
    }
    return _result;
  }
  factory ShippingAddressParameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ShippingAddressParameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ShippingAddressParameters clone() =>
      ShippingAddressParameters()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ShippingAddressParameters copyWith(
          void Function(ShippingAddressParameters) updates) =>
      super.copyWith((message) => updates(message as ShippingAddressParameters))
          as ShippingAddressParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShippingAddressParameters create() => ShippingAddressParameters._();
  ShippingAddressParameters createEmptyInstance() => create();
  static $pb.PbList<ShippingAddressParameters> createRepeated() =>
      $pb.PbList<ShippingAddressParameters>();
  @$core.pragma('dart2js:noInline')
  static ShippingAddressParameters getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShippingAddressParameters>(create);
  static ShippingAddressParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get allowedCountryCodes => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get phoneNumberRequired => $_getBF(1);
  @$pb.TagNumber(2)
  set phoneNumberRequired($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPhoneNumberRequired() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhoneNumberRequired() => clearField(2);
}
