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
  static CardAuthMethods? valueOf($core.int value) => _byValue[value];

  const CardAuthMethods._($core.int v, $core.String n) : super(v, n);
}
