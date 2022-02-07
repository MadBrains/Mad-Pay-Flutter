///
//  Generated code. Do not modify.
//  source: apple.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MerchantCapabilities extends $pb.ProtobufEnum {
  static const MerchantCapabilities THREEDS = MerchantCapabilities._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'THREEDS');
  static const MerchantCapabilities CREDIT = MerchantCapabilities._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CREDIT');
  static const MerchantCapabilities DEBIT = MerchantCapabilities._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEBIT');
  static const MerchantCapabilities EMV = MerchantCapabilities._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EMV');

  static const $core.List<MerchantCapabilities> values = <MerchantCapabilities> [
    THREEDS,
    CREDIT,
    DEBIT,
    EMV,
  ];

  static final $core.Map<$core.int, MerchantCapabilities> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MerchantCapabilities? valueOf($core.int value) => _byValue[value];

  const MerchantCapabilities._($core.int v, $core.String n) : super(v, n);
}

class ShippingType extends $pb.ProtobufEnum {
  static const ShippingType DELIVERY = ShippingType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DELIVERY');
  static const ShippingType SERVICE_PICKUP = ShippingType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SERVICE_PICKUP');
  static const ShippingType SHIPPING = ShippingType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SHIPPING');
  static const ShippingType STORE_PICKUP = ShippingType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STORE_PICKUP');

  static const $core.List<ShippingType> values = <ShippingType> [
    DELIVERY,
    SERVICE_PICKUP,
    SHIPPING,
    STORE_PICKUP,
  ];

  static final $core.Map<$core.int, ShippingType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ShippingType? valueOf($core.int value) => _byValue[value];

  const ShippingType._($core.int v, $core.String n) : super(v, n);
}

