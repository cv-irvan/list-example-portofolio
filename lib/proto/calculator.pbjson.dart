///
//  Generated code. Do not modify.
//  source: calculator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use numberDescriptor instead')
const Number$json = const {
  '1': 'Number',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 2, '10': 'value'},
  ],
};

/// Descriptor for `Number`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List numberDescriptor = $convert.base64Decode('CgZOdW1iZXISFAoFdmFsdWUYASABKAJSBXZhbHVl');
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 2, '10': 'value'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEhQKBXZhbHVlGAEgASgCUgV2YWx1ZRIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use inputGetProvinsiDescriptor instead')
const InputGetProvinsi$json = const {
  '1': 'InputGetProvinsi',
  '2': const [
    const {'1': 'kode_provinsi', '3': 1, '4': 1, '5': 3, '10': 'kodeProvinsi'},
  ],
};

/// Descriptor for `InputGetProvinsi`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inputGetProvinsiDescriptor = $convert.base64Decode('ChBJbnB1dEdldFByb3ZpbnNpEiMKDWtvZGVfcHJvdmluc2kYASABKANSDGtvZGVQcm92aW5zaQ==');
@$core.Deprecated('Use outputGetProvinsiDescriptor instead')
const OutputGetProvinsi$json = const {
  '1': 'OutputGetProvinsi',
  '2': const [
    const {'1': 'kode_provinsi', '3': 1, '4': 1, '5': 9, '10': 'kodeProvinsi'},
    const {'1': 'nama_provinsi', '3': 2, '4': 1, '5': 9, '10': 'namaProvinsi'},
  ],
};

/// Descriptor for `OutputGetProvinsi`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outputGetProvinsiDescriptor = $convert.base64Decode('ChFPdXRwdXRHZXRQcm92aW5zaRIjCg1rb2RlX3Byb3ZpbnNpGAEgASgJUgxrb2RlUHJvdmluc2kSIwoNbmFtYV9wcm92aW5zaRgCIAEoCVIMbmFtYVByb3ZpbnNp');
@$core.Deprecated('Use myResponseDescriptor instead')
const MyResponse$json = const {
  '1': 'MyResponse',
  '2': const [
    const {'1': 'rc', '3': 1, '4': 1, '5': 9, '10': 'rc'},
    const {'1': 'rc_desc', '3': 2, '4': 1, '5': 9, '10': 'rcDesc'},
    const {'1': 'provinsi', '3': 3, '4': 3, '5': 11, '6': '.OutputGetProvinsi', '10': 'provinsi'},
  ],
};

/// Descriptor for `MyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myResponseDescriptor = $convert.base64Decode('CgpNeVJlc3BvbnNlEg4KAnJjGAEgASgJUgJyYxIXCgdyY19kZXNjGAIgASgJUgZyY0Rlc2MSLgoIcHJvdmluc2kYAyADKAsyEi5PdXRwdXRHZXRQcm92aW5zaVIIcHJvdmluc2k=');
