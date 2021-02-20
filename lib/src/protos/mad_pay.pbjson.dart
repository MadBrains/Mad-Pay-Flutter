///
//  Generated code. Do not modify.
//  source: mad_pay.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use paymentEnvironmentDescriptor instead')
const PaymentEnvironment$json = {
  '1': 'PaymentEnvironment',
  '2': [
    {'1': 'TEST', '2': 0},
    {'1': 'PRODUCTION', '2': 1},
  ],
};

/// Descriptor for `PaymentEnvironment`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List paymentEnvironmentDescriptor =
    $convert.base64Decode(
        'ChJQYXltZW50RW52aXJvbm1lbnQSCAoEVEVTVBAAEg4KClBST0RVQ1RJT04QAQ==');
@$core.Deprecated('Use paymentNetworkDescriptor instead')
const PaymentNetwork$json = {
  '1': 'PaymentNetwork',
  '2': [
    {'1': 'VISA', '2': 0},
    {'1': 'MASTERCARD', '2': 1},
    {'1': 'AMEX', '2': 2},
    {'1': 'INTERACT', '2': 3},
    {'1': 'DISCOVER', '2': 4},
    {'1': 'JCB', '2': 5},
    {'1': 'MAESTRO', '2': 6},
    {'1': 'ELECTRON', '2': 7},
    {'1': 'MIR', '2': 8},
    {'1': 'CARTESBANCARRIES', '2': 9},
    {'1': 'UNIONPAY', '2': 10},
    {'1': 'EFTPOS', '2': 11},
    {'1': 'ELO', '2': 12},
    {'1': 'IDCREDIT', '2': 13},
    {'1': 'MADA', '2': 14},
    {'1': 'PRIVATELABEL', '2': 15},
    {'1': 'QUICPAY', '2': 16},
    {'1': 'SUICA', '2': 17},
    {'1': 'VPAY', '2': 18},
  ],
};

/// Descriptor for `PaymentNetwork`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List paymentNetworkDescriptor = $convert.base64Decode(
    'Cg5QYXltZW50TmV0d29yaxIICgRWSVNBEAASDgoKTUFTVEVSQ0FSRBABEggKBEFNRVgQAhIMCghJTlRFUkFDVBADEgwKCERJU0NPVkVSEAQSBwoDSkNCEAUSCwoHTUFFU1RSTxAGEgwKCEVMRUNUUk9OEAcSBwoDTUlSEAgSFAoQQ0FSVEVTQkFOQ0FSUklFUxAJEgwKCFVOSU9OUEFZEAoSCgoGRUZUUE9TEAsSBwoDRUxPEAwSDAoISURDUkVESVQQDRIICgRNQURBEA4SEAoMUFJJVkFURUxBQkVMEA8SCwoHUVVJQ1BBWRAQEgkKBVNVSUNBEBESCAoEVlBBWRAS');
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
@$core.Deprecated('Use merchantCapabilitiesDescriptor instead')
const MerchantCapabilities$json = {
  '1': 'MerchantCapabilities',
  '2': [
    {'1': 'THREEDS', '2': 0},
    {'1': 'CREDIT', '2': 1},
    {'1': 'DEBIT', '2': 2},
    {'1': 'EMV', '2': 3},
  ],
};

/// Descriptor for `MerchantCapabilities`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List merchantCapabilitiesDescriptor = $convert.base64Decode(
    'ChRNZXJjaGFudENhcGFiaWxpdGllcxILCgdUSFJFRURTEAASCgoGQ1JFRElUEAESCQoFREVCSVQQAhIHCgNFTVYQAw==');
@$core.Deprecated('Use shippingTypeDescriptor instead')
const ShippingType$json = {
  '1': 'ShippingType',
  '2': [
    {'1': 'DELIVERY', '2': 0},
    {'1': 'SERVICE_PICKUP', '2': 1},
    {'1': 'SHIPPING', '2': 2},
    {'1': 'STORE_PICKUP', '2': 3},
  ],
};

/// Descriptor for `ShippingType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List shippingTypeDescriptor = $convert.base64Decode(
    'CgxTaGlwcGluZ1R5cGUSDAoIREVMSVZFUlkQABISCg5TRVJWSUNFX1BJQ0tVUBABEgwKCFNISVBQSU5HEAISEAoMU1RPUkVfUElDS1VQEAM=');
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
      '6': '.CardAuthMethods',
      '10': 'allowedCardsMethods'
    },
    {'1': 'email_required', '3': 5, '4': 1, '5': 8, '10': 'emailRequired'},
  ],
};

/// Descriptor for `GoogleParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List googleParametersDescriptor = $convert.base64Decode(
    'ChBHb29nbGVQYXJhbWV0ZXJzEiEKDGdhdGV3YXlfbmFtZRgBIAEoCVILZ2F0ZXdheU5hbWUSLgoTZ2F0ZXdheV9tZXJjaGFudF9pZBgCIAEoCVIRZ2F0ZXdheU1lcmNoYW50SWQSIwoNbWVyY2hhbnRfbmFtZRgDIAEoCVIMbWVyY2hhbnROYW1lEkQKFWFsbG93ZWRfY2FyZHNfbWV0aG9kcxgEIAMoDjIQLkNhcmRBdXRoTWV0aG9kc1ITYWxsb3dlZENhcmRzTWV0aG9kcxIlCg5lbWFpbF9yZXF1aXJlZBgFIAEoCFINZW1haWxSZXF1aXJlZA==');
@$core.Deprecated('Use appleParametersDescriptor instead')
const AppleParameters$json = {
  '1': 'AppleParameters',
  '2': [
    {
      '1': 'merchant_identifier',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'merchantIdentifier'
    },
    {
      '1': 'merchant_capabilities',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.MerchantCapabilities',
      '10': 'merchantCapabilities'
    },
    {
      '1': 'shipping_type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.ShippingType',
      '10': 'shippingType'
    },
  ],
};

/// Descriptor for `AppleParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appleParametersDescriptor = $convert.base64Decode(
    'Cg9BcHBsZVBhcmFtZXRlcnMSLwoTbWVyY2hhbnRfaWRlbnRpZmllchgBIAEoCVISbWVyY2hhbnRJZGVudGlmaWVyEkoKFW1lcmNoYW50X2NhcGFiaWxpdGllcxgCIAEoDjIVLk1lcmNoYW50Q2FwYWJpbGl0aWVzUhRtZXJjaGFudENhcGFiaWxpdGllcxIyCg1zaGlwcGluZ190eXBlGAMgASgOMg0uU2hpcHBpbmdUeXBlUgxzaGlwcGluZ1R5cGU=');
@$core.Deprecated('Use paymentItemDescriptor instead')
const PaymentItem$json = {
  '1': 'PaymentItem',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'price', '3': 2, '4': 1, '5': 1, '10': 'price'},
  ],
};

/// Descriptor for `PaymentItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentItemDescriptor = $convert.base64Decode(
    'CgtQYXltZW50SXRlbRISCgRuYW1lGAEgASgJUgRuYW1lEhQKBXByaWNlGAIgASgBUgVwcmljZQ==');
@$core.Deprecated('Use paymentRequestDescriptor instead')
const PaymentRequest$json = {
  '1': 'PaymentRequest',
  '2': [
    {
      '1': 'google',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GoogleParameters',
      '9': 0,
      '10': 'google'
    },
    {
      '1': 'apple',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.AppleParameters',
      '9': 0,
      '10': 'apple'
    },
    {'1': 'currency_code', '3': 3, '4': 1, '5': 9, '10': 'currencyCode'},
    {'1': 'country_code', '3': 4, '4': 1, '5': 9, '10': 'countryCode'},
    {
      '1': 'allowed_payment_networks',
      '3': 5,
      '4': 3,
      '5': 14,
      '6': '.PaymentNetwork',
      '10': 'allowedPaymentNetworks'
    },
    {
      '1': 'payment_items',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.PaymentItem',
      '10': 'paymentItems'
    },
  ],
  '8': [
    {'1': 'parameters'},
  ],
};

/// Descriptor for `PaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentRequestDescriptor = $convert.base64Decode(
    'Cg5QYXltZW50UmVxdWVzdBIrCgZnb29nbGUYASABKAsyES5Hb29nbGVQYXJhbWV0ZXJzSABSBmdvb2dsZRIoCgVhcHBsZRgCIAEoCzIQLkFwcGxlUGFyYW1ldGVyc0gAUgVhcHBsZRIjCg1jdXJyZW5jeV9jb2RlGAMgASgJUgxjdXJyZW5jeUNvZGUSIQoMY291bnRyeV9jb2RlGAQgASgJUgtjb3VudHJ5Q29kZRJJChhhbGxvd2VkX3BheW1lbnRfbmV0d29ya3MYBSADKA4yDy5QYXltZW50TmV0d29ya1IWYWxsb3dlZFBheW1lbnROZXR3b3JrcxIxCg1wYXltZW50X2l0ZW1zGAYgAygLMgwuUGF5bWVudEl0ZW1SDHBheW1lbnRJdGVtc0IMCgpwYXJhbWV0ZXJz');
@$core.Deprecated('Use environmentRequestDescriptor instead')
const EnvironmentRequest$json = {
  '1': 'EnvironmentRequest',
  '2': [
    {
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
const CheckActiveCardRequest$json = {
  '1': 'CheckActiveCardRequest',
  '2': [
    {
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
const Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'error_code', '3': 2, '4': 1, '5': 9, '10': 'errorCode'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {
      '1': 'data',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.Response.DataEntry',
      '10': 'data'
    },
  ],
  '3': [Response_DataEntry$json],
};

@$core.Deprecated('Use responseDescriptor instead')
const Response_DataEntry$json = {
  '1': 'DataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEh0KCmVycm9yX2NvZGUYAiABKAlSCWVycm9yQ29kZRIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdlEicKBGRhdGEYBCADKAsyEy5SZXNwb25zZS5EYXRhRW50cnlSBGRhdGEaNwoJRGF0YUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
