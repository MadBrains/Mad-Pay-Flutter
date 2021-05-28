///
//  Generated code. Do not modify.
//  source: apple.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use merchantCapabilitiesDescriptor instead')
const MerchantCapabilities$json = const {
  '1': 'MerchantCapabilities',
  '2': const [
    const {'1': 'THREEDS', '2': 0},
    const {'1': 'CREDIT', '2': 1},
    const {'1': 'DEBIT', '2': 2},
    const {'1': 'EMV', '2': 3},
  ],
};

/// Descriptor for `MerchantCapabilities`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List merchantCapabilitiesDescriptor = $convert.base64Decode(
    'ChRNZXJjaGFudENhcGFiaWxpdGllcxILCgdUSFJFRURTEAASCgoGQ1JFRElUEAESCQoFREVCSVQQAhIHCgNFTVYQAw==');
@$core.Deprecated('Use shippingTypeDescriptor instead')
const ShippingType$json = const {
  '1': 'ShippingType',
  '2': const [
    const {'1': 'DELIVERY', '2': 0},
    const {'1': 'SERVICE_PICKUP', '2': 1},
    const {'1': 'SHIPPING', '2': 2},
    const {'1': 'STORE_PICKUP', '2': 3},
  ],
};

/// Descriptor for `ShippingType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List shippingTypeDescriptor = $convert.base64Decode(
    'CgxTaGlwcGluZ1R5cGUSDAoIREVMSVZFUlkQABISCg5TRVJWSUNFX1BJQ0tVUBABEgwKCFNISVBQSU5HEAISEAoMU1RPUkVfUElDS1VQEAM=');
@$core.Deprecated('Use appleParametersDescriptor instead')
const AppleParameters$json = const {
  '1': 'AppleParameters',
  '2': const [
    const {
      '1': 'merchant_identifier',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'merchantIdentifier'
    },
    const {
      '1': 'merchant_capabilities',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.apple.MerchantCapabilities',
      '10': 'merchantCapabilities'
    },
    const {
      '1': 'supported_countries',
      '3': 3,
      '4': 3,
      '5': 9,
      '10': 'supportedCountries'
    },
    const {
      '1': 'required_billing_contact_fields',
      '3': 4,
      '4': 3,
      '5': 9,
      '10': 'requiredBillingContactFields'
    },
    const {
      '1': 'required_shipping_contact_fields',
      '3': 5,
      '4': 3,
      '5': 9,
      '10': 'requiredShippingContactFields'
    },
    const {
      '1': 'billing_contact',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.apple.Contact',
      '10': 'billingContact'
    },
    const {
      '1': 'shipping_contact',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.apple.Contact',
      '10': 'shippingContact'
    },
    const {
      '1': 'shipping_methods',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.apple.ShippingMethod',
      '10': 'shippingMethods'
    },
    const {
      '1': 'shipping_type',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.apple.ShippingType',
      '10': 'shippingType'
    },
    const {
      '1': 'application_data',
      '3': 10,
      '4': 1,
      '5': 12,
      '10': 'applicationData'
    },
  ],
};

/// Descriptor for `AppleParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appleParametersDescriptor = $convert.base64Decode(
    'Cg9BcHBsZVBhcmFtZXRlcnMSLwoTbWVyY2hhbnRfaWRlbnRpZmllchgBIAEoCVISbWVyY2hhbnRJZGVudGlmaWVyElAKFW1lcmNoYW50X2NhcGFiaWxpdGllcxgCIAEoDjIbLmFwcGxlLk1lcmNoYW50Q2FwYWJpbGl0aWVzUhRtZXJjaGFudENhcGFiaWxpdGllcxIvChNzdXBwb3J0ZWRfY291bnRyaWVzGAMgAygJUhJzdXBwb3J0ZWRDb3VudHJpZXMSRQofcmVxdWlyZWRfYmlsbGluZ19jb250YWN0X2ZpZWxkcxgEIAMoCVIccmVxdWlyZWRCaWxsaW5nQ29udGFjdEZpZWxkcxJHCiByZXF1aXJlZF9zaGlwcGluZ19jb250YWN0X2ZpZWxkcxgFIAMoCVIdcmVxdWlyZWRTaGlwcGluZ0NvbnRhY3RGaWVsZHMSNwoPYmlsbGluZ19jb250YWN0GAYgASgLMg4uYXBwbGUuQ29udGFjdFIOYmlsbGluZ0NvbnRhY3QSOQoQc2hpcHBpbmdfY29udGFjdBgHIAEoCzIOLmFwcGxlLkNvbnRhY3RSD3NoaXBwaW5nQ29udGFjdBJAChBzaGlwcGluZ19tZXRob2RzGAggAygLMhUuYXBwbGUuU2hpcHBpbmdNZXRob2RSD3NoaXBwaW5nTWV0aG9kcxI4Cg1zaGlwcGluZ190eXBlGAkgASgOMhMuYXBwbGUuU2hpcHBpbmdUeXBlUgxzaGlwcGluZ1R5cGUSKQoQYXBwbGljYXRpb25fZGF0YRgKIAEoDFIPYXBwbGljYXRpb25EYXRh');
@$core.Deprecated('Use contactDescriptor instead')
const Contact$json = const {
  '1': 'Contact',
  '2': const [
    const {'1': 'email_addres', '3': 1, '4': 1, '5': 9, '10': 'emailAddres'},
    const {
      '1': 'name',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.apple.PersonNameComponents',
      '10': 'name'
    },
    const {'1': 'phone_number', '3': 3, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {
      '1': 'postal_address',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.apple.PostalAddress',
      '10': 'postalAddress'
    },
  ],
};

/// Descriptor for `Contact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactDescriptor = $convert.base64Decode(
    'CgdDb250YWN0EiEKDGVtYWlsX2FkZHJlcxgBIAEoCVILZW1haWxBZGRyZXMSLwoEbmFtZRgCIAEoCzIbLmFwcGxlLlBlcnNvbk5hbWVDb21wb25lbnRzUgRuYW1lEiEKDHBob25lX251bWJlchgDIAEoCVILcGhvbmVOdW1iZXISOwoOcG9zdGFsX2FkZHJlc3MYBCABKAsyFC5hcHBsZS5Qb3N0YWxBZGRyZXNzUg1wb3N0YWxBZGRyZXNz');
@$core.Deprecated('Use personNameComponentsDescriptor instead')
const PersonNameComponents$json = const {
  '1': 'PersonNameComponents',
  '2': const [
    const {'1': 'name_prefix', '3': 1, '4': 1, '5': 9, '10': 'namePrefix'},
    const {'1': 'given_name', '3': 2, '4': 1, '5': 9, '10': 'givenName'},
    const {'1': 'middle_name', '3': 3, '4': 1, '5': 9, '10': 'middleName'},
    const {'1': 'family_name', '3': 4, '4': 1, '5': 9, '10': 'familyName'},
    const {'1': 'name_suffix', '3': 5, '4': 1, '5': 9, '10': 'nameSuffix'},
    const {'1': 'nickname', '3': 6, '4': 1, '5': 9, '10': 'nickname'},
    const {
      '1': 'phonetic_representation',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.apple.PersonNameComponents',
      '10': 'phoneticRepresentation'
    },
  ],
};

/// Descriptor for `PersonNameComponents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List personNameComponentsDescriptor = $convert.base64Decode(
    'ChRQZXJzb25OYW1lQ29tcG9uZW50cxIfCgtuYW1lX3ByZWZpeBgBIAEoCVIKbmFtZVByZWZpeBIdCgpnaXZlbl9uYW1lGAIgASgJUglnaXZlbk5hbWUSHwoLbWlkZGxlX25hbWUYAyABKAlSCm1pZGRsZU5hbWUSHwoLZmFtaWx5X25hbWUYBCABKAlSCmZhbWlseU5hbWUSHwoLbmFtZV9zdWZmaXgYBSABKAlSCm5hbWVTdWZmaXgSGgoIbmlja25hbWUYBiABKAlSCG5pY2tuYW1lElQKF3Bob25ldGljX3JlcHJlc2VudGF0aW9uGAcgASgLMhsuYXBwbGUuUGVyc29uTmFtZUNvbXBvbmVudHNSFnBob25ldGljUmVwcmVzZW50YXRpb24=');
@$core.Deprecated('Use postalAddressDescriptor instead')
const PostalAddress$json = const {
  '1': 'PostalAddress',
  '2': const [
    const {'1': 'street', '3': 1, '4': 1, '5': 9, '10': 'street'},
    const {'1': 'city', '3': 2, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'state', '3': 3, '4': 1, '5': 9, '10': 'state'},
    const {'1': 'postal_code', '3': 4, '4': 1, '5': 9, '10': 'postalCode'},
    const {'1': 'country', '3': 5, '4': 1, '5': 9, '10': 'country'},
    const {
      '1': 'iso_country_code',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'isoCountryCode'
    },
    const {
      '1': 'sub_administrative_area',
      '3': 7,
      '4': 1,
      '5': 9,
      '10': 'subAdministrativeArea'
    },
    const {'1': 'sub_locality', '3': 8, '4': 1, '5': 9, '10': 'subLocality'},
  ],
};

/// Descriptor for `PostalAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postalAddressDescriptor = $convert.base64Decode(
    'Cg1Qb3N0YWxBZGRyZXNzEhYKBnN0cmVldBgBIAEoCVIGc3RyZWV0EhIKBGNpdHkYAiABKAlSBGNpdHkSFAoFc3RhdGUYAyABKAlSBXN0YXRlEh8KC3Bvc3RhbF9jb2RlGAQgASgJUgpwb3N0YWxDb2RlEhgKB2NvdW50cnkYBSABKAlSB2NvdW50cnkSKAoQaXNvX2NvdW50cnlfY29kZRgGIAEoCVIOaXNvQ291bnRyeUNvZGUSNgoXc3ViX2FkbWluaXN0cmF0aXZlX2FyZWEYByABKAlSFXN1YkFkbWluaXN0cmF0aXZlQXJlYRIhCgxzdWJfbG9jYWxpdHkYCCABKAlSC3N1YkxvY2FsaXR5');
@$core.Deprecated('Use shippingMethodDescriptor instead')
const ShippingMethod$json = const {
  '1': 'ShippingMethod',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'price', '3': 2, '4': 1, '5': 1, '10': 'price'},
    const {'1': 'identifier', '3': 3, '4': 1, '5': 9, '10': 'identifier'},
    const {'1': 'detail', '3': 4, '4': 1, '5': 9, '10': 'detail'},
  ],
};

/// Descriptor for `ShippingMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shippingMethodDescriptor = $convert.base64Decode(
    'Cg5TaGlwcGluZ01ldGhvZBISCgRuYW1lGAEgASgJUgRuYW1lEhQKBXByaWNlGAIgASgBUgVwcmljZRIeCgppZGVudGlmaWVyGAMgASgJUgppZGVudGlmaWVyEhYKBmRldGFpbBgEIAEoCVIGZGV0YWls');
