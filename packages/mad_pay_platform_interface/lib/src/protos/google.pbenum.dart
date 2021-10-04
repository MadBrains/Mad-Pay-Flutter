///
//  Generated code. Do not modify.
//  source: google.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CardAuthMethods extends $pb.ProtobufEnum {
  static const CardAuthMethods PAN_ONLY = CardAuthMethods._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAN_ONLY');
  static const CardAuthMethods CRYPTOGRAM_3DS = CardAuthMethods._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CRYPTOGRAM_3DS');

  static const $core.List<CardAuthMethods> values = <CardAuthMethods> [
    PAN_ONLY,
    CRYPTOGRAM_3DS,
  ];

  static final $core.Map<$core.int, CardAuthMethods> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CardAuthMethods? valueOf($core.int value) => _byValue[value];

  const CardAuthMethods._($core.int v, $core.String n) : super(v, n);
}

class BillingFormat extends $pb.ProtobufEnum {
  static const BillingFormat MIN = BillingFormat._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MIN');
  static const BillingFormat FULL = BillingFormat._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FULL');

  static const $core.List<BillingFormat> values = <BillingFormat> [
    MIN,
    FULL,
  ];

  static final $core.Map<$core.int, BillingFormat> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BillingFormat? valueOf($core.int value) => _byValue[value];

  const BillingFormat._($core.int v, $core.String n) : super(v, n);
}

class TotalPriceStatus extends $pb.ProtobufEnum {
  static const TotalPriceStatus FINAL = TotalPriceStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FINAL');
  static const TotalPriceStatus ESTIMATED = TotalPriceStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ESTIMATED');
  static const TotalPriceStatus NOT_CURRENTLY_KNOWN = TotalPriceStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_CURRENTLY_KNOWN');

  static const $core.List<TotalPriceStatus> values = <TotalPriceStatus> [
    FINAL,
    ESTIMATED,
    NOT_CURRENTLY_KNOWN,
  ];

  static final $core.Map<$core.int, TotalPriceStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TotalPriceStatus? valueOf($core.int value) => _byValue[value];

  const TotalPriceStatus._($core.int v, $core.String n) : super(v, n);
}

class CheckoutOption extends $pb.ProtobufEnum {
  static const CheckoutOption DEFAULT = CheckoutOption._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEFAULT');
  static const CheckoutOption COMPLETE_IMMEDIATE_PURCHASE = CheckoutOption._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMPLETE_IMMEDIATE_PURCHASE');

  static const $core.List<CheckoutOption> values = <CheckoutOption> [
    DEFAULT,
    COMPLETE_IMMEDIATE_PURCHASE,
  ];

  static final $core.Map<$core.int, CheckoutOption> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CheckoutOption? valueOf($core.int value) => _byValue[value];

  const CheckoutOption._($core.int v, $core.String n) : super(v, n);
}

