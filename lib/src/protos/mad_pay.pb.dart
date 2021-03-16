///
//  Generated code. Do not modify.
//  source: mad_pay.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google.pb.dart' as $0;
import 'apple.pb.dart' as $1;

import 'mad_pay.pbenum.dart';

export 'mad_pay.pbenum.dart';

class PaymentItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PaymentItem',
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
    ..hasRequiredFields = false;

  PaymentItem._() : super();
  factory PaymentItem({
    $core.String? name,
    $core.double? price,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (price != null) {
      _result.price = price;
    }
    return _result;
  }
  factory PaymentItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PaymentItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PaymentItem clone() => PaymentItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PaymentItem copyWith(void Function(PaymentItem) updates) =>
      super.copyWith((message) => updates(message as PaymentItem))
          as PaymentItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentItem create() => PaymentItem._();
  PaymentItem createEmptyInstance() => create();
  static $pb.PbList<PaymentItem> createRepeated() => $pb.PbList<PaymentItem>();
  @$core.pragma('dart2js:noInline')
  static PaymentItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PaymentItem>(create);
  static PaymentItem? _defaultInstance;

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
}

enum PaymentRequest_Parameters { google, apple, notSet }

class PaymentRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PaymentRequest_Parameters>
      _PaymentRequest_ParametersByTag = {
    1: PaymentRequest_Parameters.google,
    2: PaymentRequest_Parameters.apple,
    0: PaymentRequest_Parameters.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PaymentRequest',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.GoogleParameters>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'google',
        subBuilder: $0.GoogleParameters.create)
    ..aOM<$1.AppleParameters>(
        2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apple',
        subBuilder: $1.AppleParameters.create)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'currencyCode')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCode')
    ..pc<PaymentNetwork>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowedPaymentNetworks', $pb.PbFieldType.PE, valueOf: PaymentNetwork.valueOf, enumValues: PaymentNetwork.values)
    ..pc<PaymentItem>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentItems', $pb.PbFieldType.PM, subBuilder: PaymentItem.create)
    ..hasRequiredFields = false;

  PaymentRequest._() : super();
  factory PaymentRequest({
    $0.GoogleParameters? google,
    $1.AppleParameters? apple,
    $core.String? currencyCode,
    $core.String? countryCode,
    $core.Iterable<PaymentNetwork>? allowedPaymentNetworks,
    $core.Iterable<PaymentItem>? paymentItems,
  }) {
    final _result = create();
    if (google != null) {
      _result.google = google;
    }
    if (apple != null) {
      _result.apple = apple;
    }
    if (currencyCode != null) {
      _result.currencyCode = currencyCode;
    }
    if (countryCode != null) {
      _result.countryCode = countryCode;
    }
    if (allowedPaymentNetworks != null) {
      _result.allowedPaymentNetworks.addAll(allowedPaymentNetworks);
    }
    if (paymentItems != null) {
      _result.paymentItems.addAll(paymentItems);
    }
    return _result;
  }
  factory PaymentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PaymentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PaymentRequest clone() => PaymentRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PaymentRequest copyWith(void Function(PaymentRequest) updates) =>
      super.copyWith((message) => updates(message as PaymentRequest))
          as PaymentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentRequest create() => PaymentRequest._();
  PaymentRequest createEmptyInstance() => create();
  static $pb.PbList<PaymentRequest> createRepeated() =>
      $pb.PbList<PaymentRequest>();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PaymentRequest>(create);
  static PaymentRequest? _defaultInstance;

  PaymentRequest_Parameters whichParameters() =>
      _PaymentRequest_ParametersByTag[$_whichOneof(0)]!;
  void clearParameters() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.GoogleParameters get google => $_getN(0);
  @$pb.TagNumber(1)
  set google($0.GoogleParameters v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGoogle() => $_has(0);
  @$pb.TagNumber(1)
  void clearGoogle() => clearField(1);
  @$pb.TagNumber(1)
  $0.GoogleParameters ensureGoogle() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.AppleParameters get apple => $_getN(1);
  @$pb.TagNumber(2)
  set apple($1.AppleParameters v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasApple() => $_has(1);
  @$pb.TagNumber(2)
  void clearApple() => clearField(2);
  @$pb.TagNumber(2)
  $1.AppleParameters ensureApple() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get currencyCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set currencyCode($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCurrencyCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrencyCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get countryCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set countryCode($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCountryCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCountryCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<PaymentNetwork> get allowedPaymentNetworks => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<PaymentItem> get paymentItems => $_getList(5);
}

class EnvironmentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EnvironmentRequest',
      createEmptyInstance: create)
    ..e<PaymentEnvironment>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'environment',
        $pb.PbFieldType.OE,
        defaultOrMaker: PaymentEnvironment.TEST,
        valueOf: PaymentEnvironment.valueOf,
        enumValues: PaymentEnvironment.values)
    ..hasRequiredFields = false;

  EnvironmentRequest._() : super();
  factory EnvironmentRequest({
    PaymentEnvironment? environment,
  }) {
    final _result = create();
    if (environment != null) {
      _result.environment = environment;
    }
    return _result;
  }
  factory EnvironmentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EnvironmentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EnvironmentRequest clone() => EnvironmentRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EnvironmentRequest copyWith(void Function(EnvironmentRequest) updates) =>
      super.copyWith((message) => updates(message as EnvironmentRequest))
          as EnvironmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EnvironmentRequest create() => EnvironmentRequest._();
  EnvironmentRequest createEmptyInstance() => create();
  static $pb.PbList<EnvironmentRequest> createRepeated() =>
      $pb.PbList<EnvironmentRequest>();
  @$core.pragma('dart2js:noInline')
  static EnvironmentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentRequest>(create);
  static EnvironmentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PaymentEnvironment get environment => $_getN(0);
  @$pb.TagNumber(1)
  set environment(PaymentEnvironment v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEnvironment() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnvironment() => clearField(1);
}

class CheckActiveCardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CheckActiveCardRequest',
      createEmptyInstance: create)
    ..pc<PaymentNetwork>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'allowedPaymentNetworks',
        $pb.PbFieldType.PE,
        valueOf: PaymentNetwork.valueOf,
        enumValues: PaymentNetwork.values)
    ..hasRequiredFields = false;

  CheckActiveCardRequest._() : super();
  factory CheckActiveCardRequest({
    $core.Iterable<PaymentNetwork>? allowedPaymentNetworks,
  }) {
    final _result = create();
    if (allowedPaymentNetworks != null) {
      _result.allowedPaymentNetworks.addAll(allowedPaymentNetworks);
    }
    return _result;
  }
  factory CheckActiveCardRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CheckActiveCardRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CheckActiveCardRequest clone() =>
      CheckActiveCardRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CheckActiveCardRequest copyWith(
          void Function(CheckActiveCardRequest) updates) =>
      super.copyWith((message) => updates(message as CheckActiveCardRequest))
          as CheckActiveCardRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckActiveCardRequest create() => CheckActiveCardRequest._();
  CheckActiveCardRequest createEmptyInstance() => create();
  static $pb.PbList<CheckActiveCardRequest> createRepeated() =>
      $pb.PbList<CheckActiveCardRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckActiveCardRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckActiveCardRequest>(create);
  static CheckActiveCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PaymentNetwork> get allowedPaymentNetworks => $_getList(0);
}

class Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Response',
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'success')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'errorCode')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'message')
    ..m<$core.String, $core.String>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        entryClassName: 'Response.DataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS)
    ..hasRequiredFields = false;

  Response._() : super();
  factory Response({
    $core.bool? success,
    $core.String? errorCode,
    $core.String? message,
    $core.Map<$core.String, $core.String>? data,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (errorCode != null) {
      _result.errorCode = errorCode;
    }
    if (message != null) {
      _result.message = message;
    }
    if (data != null) {
      _result.data.addAll(data);
    }
    return _result;
  }
  factory Response.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Response clone() => Response()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Response copyWith(void Function(Response) updates) =>
      super.copyWith((message) => updates(message as Response))
          as Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorCode($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasErrorCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get data => $_getMap(3);
}
