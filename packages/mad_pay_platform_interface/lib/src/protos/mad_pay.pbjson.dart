///
//  Generated code. Do not modify.
//  source: mad_pay.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use paymentEnvironmentDescriptor instead')
const PaymentEnvironment$json = const {
  '1': 'PaymentEnvironment',
  '2': const [
    const {'1': 'TEST', '2': 0},
    const {'1': 'PRODUCTION', '2': 1},
  ],
};

/// Descriptor for `PaymentEnvironment`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List paymentEnvironmentDescriptor =
    $convert.base64Decode(
        'ChJQYXltZW50RW52aXJvbm1lbnQSCAoEVEVTVBAAEg4KClBST0RVQ1RJT04QAQ==');
@$core.Deprecated('Use paymentNetworkDescriptor instead')
const PaymentNetwork$json = const {
  '1': 'PaymentNetwork',
  '2': const [
    const {'1': 'VISA', '2': 0},
    const {'1': 'MASTERCARD', '2': 1},
    const {'1': 'AMEX', '2': 2},
    const {'1': 'INTERAC', '2': 3},
    const {'1': 'DISCOVER', '2': 4},
    const {'1': 'JCB', '2': 5},
    const {'1': 'MAESTRO', '2': 6},
    const {'1': 'ELECTRON', '2': 7},
    const {'1': 'MIR', '2': 8},
    const {'1': 'CARTESBANCARRIES', '2': 9},
    const {'1': 'UNIONPAY', '2': 10},
    const {'1': 'EFTPOS', '2': 11},
    const {'1': 'ELO', '2': 12},
    const {'1': 'IDCREDIT', '2': 13},
    const {'1': 'MADA', '2': 14},
    const {'1': 'PRIVATELABEL', '2': 15},
    const {'1': 'QUICPAY', '2': 16},
    const {'1': 'SUICA', '2': 17},
    const {'1': 'VPAY', '2': 18},
  ],
};

/// Descriptor for `PaymentNetwork`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List paymentNetworkDescriptor = $convert.base64Decode(
    'Cg5QYXltZW50TmV0d29yaxIICgRWSVNBEAASDgoKTUFTVEVSQ0FSRBABEggKBEFNRVgQAhILCgdJTlRFUkFDEAMSDAoIRElTQ09WRVIQBBIHCgNKQ0IQBRILCgdNQUVTVFJPEAYSDAoIRUxFQ1RST04QBxIHCgNNSVIQCBIUChBDQVJURVNCQU5DQVJSSUVTEAkSDAoIVU5JT05QQVkQChIKCgZFRlRQT1MQCxIHCgNFTE8QDBIMCghJRENSRURJVBANEggKBE1BREEQDhIQCgxQUklWQVRFTEFCRUwQDxILCgdRVUlDUEFZEBASCQoFU1VJQ0EQERIICgRWUEFZEBI=');
@$core.Deprecated('Use paymentItemDescriptor instead')
const PaymentItem$json = const {
  '1': 'PaymentItem',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'price', '3': 2, '4': 1, '5': 1, '10': 'price'},
  ],
};

/// Descriptor for `PaymentItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentItemDescriptor = $convert.base64Decode(
    'CgtQYXltZW50SXRlbRISCgRuYW1lGAEgASgJUgRuYW1lEhQKBXByaWNlGAIgASgBUgVwcmljZQ==');
@$core.Deprecated('Use paymentRequestDescriptor instead')
const PaymentRequest$json = const {
  '1': 'PaymentRequest',
  '2': const [
    const {
      '1': 'google',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.GoogleParameters',
      '9': 0,
      '10': 'google'
    },
    const {
      '1': 'apple',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.apple.AppleParameters',
      '9': 0,
      '10': 'apple'
    },
    const {'1': 'currency_code', '3': 3, '4': 1, '5': 9, '10': 'currencyCode'},
    const {'1': 'country_code', '3': 4, '4': 1, '5': 9, '10': 'countryCode'},
    const {
      '1': 'allowed_payment_networks',
      '3': 5,
      '4': 3,
      '5': 14,
      '6': '.PaymentNetwork',
      '10': 'allowedPaymentNetworks'
    },
    const {
      '1': 'payment_items',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.PaymentItem',
      '10': 'paymentItems'
    },
  ],
  '8': const [
    const {'1': 'parameters'},
  ],
};

/// Descriptor for `PaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentRequestDescriptor = $convert.base64Decode(
    'Cg5QYXltZW50UmVxdWVzdBIyCgZnb29nbGUYASABKAsyGC5nb29nbGUuR29vZ2xlUGFyYW1ldGVyc0gAUgZnb29nbGUSLgoFYXBwbGUYAiABKAsyFi5hcHBsZS5BcHBsZVBhcmFtZXRlcnNIAFIFYXBwbGUSIwoNY3VycmVuY3lfY29kZRgDIAEoCVIMY3VycmVuY3lDb2RlEiEKDGNvdW50cnlfY29kZRgEIAEoCVILY291bnRyeUNvZGUSSQoYYWxsb3dlZF9wYXltZW50X25ldHdvcmtzGAUgAygOMg8uUGF5bWVudE5ldHdvcmtSFmFsbG93ZWRQYXltZW50TmV0d29ya3MSMQoNcGF5bWVudF9pdGVtcxgGIAMoCzIMLlBheW1lbnRJdGVtUgxwYXltZW50SXRlbXNCDAoKcGFyYW1ldGVycw==');
@$core.Deprecated('Use environmentRequestDescriptor instead')
const EnvironmentRequest$json = const {
  '1': 'EnvironmentRequest',
  '2': const [
    const {
      '1': 'environment',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.PaymentEnvironment',
      '10': 'environment'
    },
  ],
};

/// Descriptor for `EnvironmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentRequestDescriptor = $convert.base64Decode(
    'ChJFbnZpcm9ubWVudFJlcXVlc3QSNQoLZW52aXJvbm1lbnQYASABKA4yEy5QYXltZW50RW52aXJvbm1lbnRSC2Vudmlyb25tZW50');
@$core.Deprecated('Use checkActiveCardRequestDescriptor instead')
const CheckActiveCardRequest$json = const {
  '1': 'CheckActiveCardRequest',
  '2': const [
    const {
      '1': 'allowed_payment_networks',
      '3': 1,
      '4': 3,
      '5': 14,
      '6': '.PaymentNetwork',
      '10': 'allowedPaymentNetworks'
    },
  ],
};

/// Descriptor for `CheckActiveCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkActiveCardRequestDescriptor =
    $convert.base64Decode(
        'ChZDaGVja0FjdGl2ZUNhcmRSZXF1ZXN0EkkKGGFsbG93ZWRfcGF5bWVudF9uZXR3b3JrcxgBIAMoDjIPLlBheW1lbnROZXR3b3JrUhZhbGxvd2VkUGF5bWVudE5ldHdvcmtz');
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error_code', '3': 2, '4': 1, '5': 9, '10': 'errorCode'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 4, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEh0KCmVycm9yX2NvZGUYAiABKAlSCWVycm9yQ29kZRIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdlEhIKBGRhdGEYBCABKAxSBGRhdGE=');
