//
//  Generated code. Do not modify.
//  source: crypto.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cryptoDescriptor instead')
const Crypto$json = {
  '1': 'Crypto',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    {'1': 'price', '3': 3, '4': 1, '5': 1, '10': 'price'},
  ],
};

/// Descriptor for `Crypto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cryptoDescriptor = $convert.base64Decode(
    'CgZDcnlwdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRIOCgJpZBgCIAEoBVICaWQSFAoFcHJpY2UYAy'
    'ABKAFSBXByaWNl');

@$core.Deprecated('Use getCryptoByIdRequestDescriptor instead')
const GetCryptoByIdRequest$json = {
  '1': 'GetCryptoByIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetCryptoByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCryptoByIdRequestDescriptor = $convert.base64Decode(
    'ChRHZXRDcnlwdG9CeUlkUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

