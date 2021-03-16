///
//  Generated code. Do not modify.
//  source: google.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cardAuthMethodsDescriptor instead')
const CardAuthMethods$json = {
  '1': 'CardAuthMethods',
  '2': [
    {'1': 'PAN_ONLY', '2': 0},
    {'1': 'CRYPTOGRAM_3DS', '2': 1},
  ],
};

/// Descriptor for `CardAuthMethods`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cardAuthMethodsDescriptor = $convert.base64Decode(
    'Cg9DYXJkQXV0aE1ldGhvZHMSDAoIUEFOX09OTFkQABISCg5DUllQVE9HUkFNXzNEUxAB');
@$core.Deprecated('Use googleParametersDescriptor instead')
const GoogleParameters$json = {
  '1': 'GoogleParameters',
  '2': [
    {'1': 'gateway_name', '3': 1, '4': 1, '5': 9, '10': 'gatewayName'},
    {
      '1': 'gateway_merchant_id',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'gatewayMerchantId'
    },
    {'1': 'merchant_name', '3': 3, '4': 1, '5': 9, '10': 'merchantName'},
    {
      '1': 'allowed_cards_methods',
      '3': 4,
      '4': 3,
      '5': 14,
      '6': '.google.CardAuthMethods',
      '10': 'allowedCardsMethods'
    },
    {'1': 'email_required', '3': 5, '4': 1, '5': 8, '10': 'emailRequired'},
  ],
};

/// Descriptor for `GoogleParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List googleParametersDescriptor = $convert.base64Decode(
    'ChBHb29nbGVQYXJhbWV0ZXJzEiEKDGdhdGV3YXlfbmFtZRgBIAEoCVILZ2F0ZXdheU5hbWUSLgoTZ2F0ZXdheV9tZXJjaGFudF9pZBgCIAEoCVIRZ2F0ZXdheU1lcmNoYW50SWQSIwoNbWVyY2hhbnRfbmFtZRgDIAEoCVIMbWVyY2hhbnROYW1lEksKFWFsbG93ZWRfY2FyZHNfbWV0aG9kcxgEIAMoDjIXLmdvb2dsZS5DYXJkQXV0aE1ldGhvZHNSE2FsbG93ZWRDYXJkc01ldGhvZHMSJQoOZW1haWxfcmVxdWlyZWQYBSABKAhSDWVtYWlsUmVxdWlyZWQ=');
