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
const CardAuthMethods$json = const {
  '1': 'CardAuthMethods',
  '2': const [
    const {'1': 'PAN_ONLY', '2': 0},
    const {'1': 'CRYPTOGRAM_3DS', '2': 1},
  ],
};

/// Descriptor for `CardAuthMethods`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cardAuthMethodsDescriptor = $convert.base64Decode('Cg9DYXJkQXV0aE1ldGhvZHMSDAoIUEFOX09OTFkQABISCg5DUllQVE9HUkFNXzNEUxAB');
@$core.Deprecated('Use billingFormatDescriptor instead')
const BillingFormat$json = const {
  '1': 'BillingFormat',
  '2': const [
    const {'1': 'MIN', '2': 0},
    const {'1': 'FULL', '2': 1},
  ],
};

/// Descriptor for `BillingFormat`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List billingFormatDescriptor = $convert.base64Decode('Cg1CaWxsaW5nRm9ybWF0EgcKA01JThAAEggKBEZVTEwQAQ==');
@$core.Deprecated('Use totalPriceStatusDescriptor instead')
const TotalPriceStatus$json = const {
  '1': 'TotalPriceStatus',
  '2': const [
    const {'1': 'FINAL', '2': 0},
    const {'1': 'ESTIMATED', '2': 1},
    const {'1': 'NOT_CURRENTLY_KNOWN', '2': 2},
  ],
};

/// Descriptor for `TotalPriceStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List totalPriceStatusDescriptor = $convert.base64Decode('ChBUb3RhbFByaWNlU3RhdHVzEgkKBUZJTkFMEAASDQoJRVNUSU1BVEVEEAESFwoTTk9UX0NVUlJFTlRMWV9LTk9XThAC');
@$core.Deprecated('Use checkoutOptionDescriptor instead')
const CheckoutOption$json = const {
  '1': 'CheckoutOption',
  '2': const [
    const {'1': 'DEFAULT', '2': 0},
    const {'1': 'COMPLETE_IMMEDIATE_PURCHASE', '2': 1},
  ],
};

/// Descriptor for `CheckoutOption`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List checkoutOptionDescriptor = $convert.base64Decode('Cg5DaGVja291dE9wdGlvbhILCgdERUZBVUxUEAASHwobQ09NUExFVEVfSU1NRURJQVRFX1BVUkNIQVNFEAE=');
@$core.Deprecated('Use googleParametersDescriptor instead')
const GoogleParameters$json = const {
  '1': 'GoogleParameters',
  '2': const [
    const {'1': 'gateway_name', '3': 1, '4': 1, '5': 9, '10': 'gatewayName'},
    const {'1': 'gateway_merchant_id', '3': 2, '4': 1, '5': 9, '10': 'gatewayMerchantId'},
    const {'1': 'merchant_name', '3': 3, '4': 1, '5': 9, '10': 'merchantName'},
    const {'1': 'merchant_id', '3': 4, '4': 1, '5': 9, '10': 'merchantId'},
    const {'1': 'card_parameters', '3': 5, '4': 1, '5': 11, '6': '.google.CardParameters', '10': 'cardParameters'},
    const {'1': 'transaction_info', '3': 6, '4': 1, '5': 11, '6': '.google.TransactionInfo', '10': 'transactionInfo'},
    const {'1': 'email_required', '3': 7, '4': 1, '5': 8, '10': 'emailRequired'},
    const {'1': 'shipping_address_required', '3': 8, '4': 1, '5': 8, '10': 'shippingAddressRequired'},
    const {'1': 'shipping_address_parameters', '3': 9, '4': 1, '5': 11, '6': '.google.ShippingAddressParameters', '10': 'shippingAddressParameters'},
  ],
};

/// Descriptor for `GoogleParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List googleParametersDescriptor = $convert.base64Decode('ChBHb29nbGVQYXJhbWV0ZXJzEiEKDGdhdGV3YXlfbmFtZRgBIAEoCVILZ2F0ZXdheU5hbWUSLgoTZ2F0ZXdheV9tZXJjaGFudF9pZBgCIAEoCVIRZ2F0ZXdheU1lcmNoYW50SWQSIwoNbWVyY2hhbnRfbmFtZRgDIAEoCVIMbWVyY2hhbnROYW1lEh8KC21lcmNoYW50X2lkGAQgASgJUgptZXJjaGFudElkEj8KD2NhcmRfcGFyYW1ldGVycxgFIAEoCzIWLmdvb2dsZS5DYXJkUGFyYW1ldGVyc1IOY2FyZFBhcmFtZXRlcnMSQgoQdHJhbnNhY3Rpb25faW5mbxgGIAEoCzIXLmdvb2dsZS5UcmFuc2FjdGlvbkluZm9SD3RyYW5zYWN0aW9uSW5mbxIlCg5lbWFpbF9yZXF1aXJlZBgHIAEoCFINZW1haWxSZXF1aXJlZBI6ChlzaGlwcGluZ19hZGRyZXNzX3JlcXVpcmVkGAggASgIUhdzaGlwcGluZ0FkZHJlc3NSZXF1aXJlZBJhChtzaGlwcGluZ19hZGRyZXNzX3BhcmFtZXRlcnMYCSABKAsyIS5nb29nbGUuU2hpcHBpbmdBZGRyZXNzUGFyYW1ldGVyc1IZc2hpcHBpbmdBZGRyZXNzUGFyYW1ldGVycw==');
@$core.Deprecated('Use cardParametersDescriptor instead')
const CardParameters$json = const {
  '1': 'CardParameters',
  '2': const [
    const {'1': 'allowed_cards_methods', '3': 1, '4': 3, '5': 14, '6': '.google.CardAuthMethods', '10': 'allowedCardsMethods'},
    const {'1': 'allow_prepaid_cards', '3': 2, '4': 1, '5': 8, '10': 'allowPrepaidCards'},
    const {'1': 'allow_credit_cards', '3': 3, '4': 1, '5': 8, '10': 'allowCreditCards'},
    const {'1': 'assurance_details_required', '3': 4, '4': 1, '5': 8, '10': 'assuranceDetailsRequired'},
    const {'1': 'billing_address_required', '3': 5, '4': 1, '5': 8, '10': 'billingAddressRequired'},
    const {'1': 'billing_address_parameters', '3': 6, '4': 1, '5': 11, '6': '.google.BillingAddressParameters', '10': 'billingAddressParameters'},
  ],
};

/// Descriptor for `CardParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardParametersDescriptor = $convert.base64Decode('Cg5DYXJkUGFyYW1ldGVycxJLChVhbGxvd2VkX2NhcmRzX21ldGhvZHMYASADKA4yFy5nb29nbGUuQ2FyZEF1dGhNZXRob2RzUhNhbGxvd2VkQ2FyZHNNZXRob2RzEi4KE2FsbG93X3ByZXBhaWRfY2FyZHMYAiABKAhSEWFsbG93UHJlcGFpZENhcmRzEiwKEmFsbG93X2NyZWRpdF9jYXJkcxgDIAEoCFIQYWxsb3dDcmVkaXRDYXJkcxI8Chphc3N1cmFuY2VfZGV0YWlsc19yZXF1aXJlZBgEIAEoCFIYYXNzdXJhbmNlRGV0YWlsc1JlcXVpcmVkEjgKGGJpbGxpbmdfYWRkcmVzc19yZXF1aXJlZBgFIAEoCFIWYmlsbGluZ0FkZHJlc3NSZXF1aXJlZBJeChpiaWxsaW5nX2FkZHJlc3NfcGFyYW1ldGVycxgGIAEoCzIgLmdvb2dsZS5CaWxsaW5nQWRkcmVzc1BhcmFtZXRlcnNSGGJpbGxpbmdBZGRyZXNzUGFyYW1ldGVycw==');
@$core.Deprecated('Use billingAddressParametersDescriptor instead')
const BillingAddressParameters$json = const {
  '1': 'BillingAddressParameters',
  '2': const [
    const {'1': 'billing_format', '3': 1, '4': 1, '5': 14, '6': '.google.BillingFormat', '10': 'billingFormat'},
    const {'1': 'phone_number_required', '3': 2, '4': 1, '5': 8, '10': 'phoneNumberRequired'},
  ],
};

/// Descriptor for `BillingAddressParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List billingAddressParametersDescriptor = $convert.base64Decode('ChhCaWxsaW5nQWRkcmVzc1BhcmFtZXRlcnMSPAoOYmlsbGluZ19mb3JtYXQYASABKA4yFS5nb29nbGUuQmlsbGluZ0Zvcm1hdFINYmlsbGluZ0Zvcm1hdBIyChVwaG9uZV9udW1iZXJfcmVxdWlyZWQYAiABKAhSE3Bob25lTnVtYmVyUmVxdWlyZWQ=');
@$core.Deprecated('Use transactionInfoDescriptor instead')
const TransactionInfo$json = const {
  '1': 'TransactionInfo',
  '2': const [
    const {'1': 'transaction_id', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    const {'1': 'total_price_status', '3': 2, '4': 1, '5': 14, '6': '.google.TotalPriceStatus', '10': 'totalPriceStatus'},
    const {'1': 'total_price_label', '3': 4, '4': 1, '5': 9, '10': 'totalPriceLabel'},
    const {'1': 'checkout_option', '3': 5, '4': 1, '5': 14, '6': '.google.CheckoutOption', '10': 'checkoutOption'},
  ],
};

/// Descriptor for `TransactionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionInfoDescriptor = $convert.base64Decode('Cg9UcmFuc2FjdGlvbkluZm8SJQoOdHJhbnNhY3Rpb25faWQYASABKAlSDXRyYW5zYWN0aW9uSWQSRgoSdG90YWxfcHJpY2Vfc3RhdHVzGAIgASgOMhguZ29vZ2xlLlRvdGFsUHJpY2VTdGF0dXNSEHRvdGFsUHJpY2VTdGF0dXMSKgoRdG90YWxfcHJpY2VfbGFiZWwYBCABKAlSD3RvdGFsUHJpY2VMYWJlbBI/Cg9jaGVja291dF9vcHRpb24YBSABKA4yFi5nb29nbGUuQ2hlY2tvdXRPcHRpb25SDmNoZWNrb3V0T3B0aW9u');
@$core.Deprecated('Use shippingAddressParametersDescriptor instead')
const ShippingAddressParameters$json = const {
  '1': 'ShippingAddressParameters',
  '2': const [
    const {'1': 'allowed_country_codes', '3': 1, '4': 3, '5': 9, '10': 'allowedCountryCodes'},
    const {'1': 'phone_number_required', '3': 2, '4': 1, '5': 8, '10': 'phoneNumberRequired'},
  ],
};

/// Descriptor for `ShippingAddressParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shippingAddressParametersDescriptor = $convert.base64Decode('ChlTaGlwcGluZ0FkZHJlc3NQYXJhbWV0ZXJzEjIKFWFsbG93ZWRfY291bnRyeV9jb2RlcxgBIAMoCVITYWxsb3dlZENvdW50cnlDb2RlcxIyChVwaG9uZV9udW1iZXJfcmVxdWlyZWQYAiABKAhSE3Bob25lTnVtYmVyUmVxdWlyZWQ=');
