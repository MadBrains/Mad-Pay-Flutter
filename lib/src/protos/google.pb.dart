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
      package: const $pb.PackageName($core.bool.fromEnvironment('protobuf.omit_message_names')
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
    ..pc<CardAuthMethods>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowedCardsMethods',
        $pb.PbFieldType.PE,
        valueOf: CardAuthMethods.valueOf,
        enumValues: CardAuthMethods.values)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailRequired')
    ..hasRequiredFields = false;

  GoogleParameters._() : super();
  factory GoogleParameters({
    $core.String? gatewayName,
    $core.String? gatewayMerchantId,
    $core.String? merchantName,
    $core.Iterable<CardAuthMethods>? allowedCardsMethods,
    $core.bool? emailRequired,
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
    if (allowedCardsMethods != null) {
      _result.allowedCardsMethods.addAll(allowedCardsMethods);
    }
    if (emailRequired != null) {
      _result.emailRequired = emailRequired;
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
  $core.List<CardAuthMethods> get allowedCardsMethods => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get emailRequired => $_getBF(4);
  @$pb.TagNumber(5)
  set emailRequired($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasEmailRequired() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmailRequired() => clearField(5);
}
