///
//  Generated code. Do not modify.
//  source: mad_pay.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PaymentEnvironment extends $pb.ProtobufEnum {
  static const PaymentEnvironment TEST = PaymentEnvironment._(
      0, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEST');
  static const PaymentEnvironment PRODUCTION = PaymentEnvironment._(
      1,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'PRODUCTION');

  static const $core.List<PaymentEnvironment> values = <PaymentEnvironment>[
    TEST,
    PRODUCTION,
  ];

  static final $core.Map<$core.int, PaymentEnvironment> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static PaymentEnvironment valueOf($core.int value) => _byValue[value];

  const PaymentEnvironment._($core.int v, $core.String n) : super(v, n);
}

class PaymentNetwork extends $pb.ProtobufEnum {
  static const PaymentNetwork VISA = PaymentNetwork._(
      0, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VISA');
  static const PaymentNetwork MASTERCARD = PaymentNetwork._(
      1,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'MASTERCARD');
  static const PaymentNetwork AMEX = PaymentNetwork._(
      2, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AMEX');
  static const PaymentNetwork INTERACT = PaymentNetwork._(3,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INTERACT');
  static const PaymentNetwork DISCOVER = PaymentNetwork._(4,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCOVER');
  static const PaymentNetwork JCB = PaymentNetwork._(
      5, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JCB');
  static const PaymentNetwork MAESTRO = PaymentNetwork._(6,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MAESTRO');
  static const PaymentNetwork ELECTRON = PaymentNetwork._(7,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ELECTRON');
  static const PaymentNetwork MIR = PaymentNetwork._(
      8, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MIR');
  static const PaymentNetwork CARTESBANCARRIES = PaymentNetwork._(
      9,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CARTESBANCARRIES');
  static const PaymentNetwork UNIONPAY = PaymentNetwork._(10,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNIONPAY');
  static const PaymentNetwork EFTPOS = PaymentNetwork._(11,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EFTPOS');
  static const PaymentNetwork ELO = PaymentNetwork._(
      12, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ELO');
  static const PaymentNetwork IDCREDIT = PaymentNetwork._(13,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IDCREDIT');
  static const PaymentNetwork MADA = PaymentNetwork._(
      14, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MADA');
  static const PaymentNetwork PRIVATELABEL = PaymentNetwork._(
      15,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'PRIVATELABEL');
  static const PaymentNetwork QUICPAY = PaymentNetwork._(16,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'QUICPAY');
  static const PaymentNetwork SUICA = PaymentNetwork._(17,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUICA');
  static const PaymentNetwork VPAY = PaymentNetwork._(
      18, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VPAY');

  static const $core.List<PaymentNetwork> values = <PaymentNetwork>[
    VISA,
    MASTERCARD,
    AMEX,
    INTERACT,
    DISCOVER,
    JCB,
    MAESTRO,
    ELECTRON,
    MIR,
    CARTESBANCARRIES,
    UNIONPAY,
    EFTPOS,
    ELO,
    IDCREDIT,
    MADA,
    PRIVATELABEL,
    QUICPAY,
    SUICA,
    VPAY,
  ];

  static final $core.Map<$core.int, PaymentNetwork> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static PaymentNetwork valueOf($core.int value) => _byValue[value];

  const PaymentNetwork._($core.int v, $core.String n) : super(v, n);
}

class CardAuthMethods extends $pb.ProtobufEnum {
  static const CardAuthMethods PAN_ONLY = CardAuthMethods._(0,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAN_ONLY');
  static const CardAuthMethods CRYPTOGRAM_3DS = CardAuthMethods._(
      1,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CRYPTOGRAM_3DS');

  static const $core.List<CardAuthMethods> values = <CardAuthMethods>[
    PAN_ONLY,
    CRYPTOGRAM_3DS,
  ];

  static final $core.Map<$core.int, CardAuthMethods> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static CardAuthMethods valueOf($core.int value) => _byValue[value];

  const CardAuthMethods._($core.int v, $core.String n) : super(v, n);
}

class MerchantCapabilities extends $pb.ProtobufEnum {
  static const MerchantCapabilities THREEDS = MerchantCapabilities._(0,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'THREEDS');
  static const MerchantCapabilities CREDIT = MerchantCapabilities._(1,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CREDIT');
  static const MerchantCapabilities DEBIT = MerchantCapabilities._(
      2, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEBIT');
  static const MerchantCapabilities EMV = MerchantCapabilities._(
      3, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EMV');

  static const $core.List<MerchantCapabilities> values = <MerchantCapabilities>[
    THREEDS,
    CREDIT,
    DEBIT,
    EMV,
  ];

  static final $core.Map<$core.int, MerchantCapabilities> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static MerchantCapabilities valueOf($core.int value) => _byValue[value];

  const MerchantCapabilities._($core.int v, $core.String n) : super(v, n);
}

class ShippingType extends $pb.ProtobufEnum {
  static const ShippingType DELIVERY = ShippingType._(0,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DELIVERY');
  static const ShippingType SERVICE_PICKUP = ShippingType._(
      1,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'SERVICE_PICKUP');
  static const ShippingType SHIPPING = ShippingType._(2,
      $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SHIPPING');
  static const ShippingType STORE_PICKUP = ShippingType._(
      3,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'STORE_PICKUP');

  static const $core.List<ShippingType> values = <ShippingType>[
    DELIVERY,
    SERVICE_PICKUP,
    SHIPPING,
    STORE_PICKUP,
  ];

  static final $core.Map<$core.int, ShippingType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ShippingType valueOf($core.int value) => _byValue[value];

  const ShippingType._($core.int v, $core.String n) : super(v, n);
}
