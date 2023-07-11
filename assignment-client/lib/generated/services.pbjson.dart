//
//  Generated code. Do not modify.
//  source: services.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getTodoRequestDescriptor instead')
const GetTodoRequest$json = {
  '1': 'GetTodoRequest',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 13, '10': 'timestamp'},
  ],
};

/// Descriptor for `GetTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTodoRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRUb2RvUmVxdWVzdBIcCgl0aW1lc3RhbXAYASABKA1SCXRpbWVzdGFtcA==');

@$core.Deprecated('Use todoDescriptor instead')
const Todo$json = {
  '1': 'Todo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'completed', '3': 3, '4': 1, '5': 8, '10': 'completed'},
  ],
};

/// Descriptor for `Todo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDescriptor = $convert.base64Decode(
    'CgRUb2RvEg4KAmlkGAEgASgNUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSHAoJY29tcGxldG'
    'VkGAMgASgIUgljb21wbGV0ZWQ=');

@$core.Deprecated('Use getTodoResponseDescriptor instead')
const GetTodoResponse$json = {
  '1': 'GetTodoResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.pokerlab.Todo', '10': 'items'},
  ],
};

/// Descriptor for `GetTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTodoResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRUb2RvUmVzcG9uc2USJAoFaXRlbXMYASADKAsyDi5wb2tlcmxhYi5Ub2RvUgVpdGVtcw'
    '==');

@$core.Deprecated('Use createTodoRequestDescriptor instead')
const CreateTodoRequest$json = {
  '1': 'CreateTodoRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `CreateTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUb2RvUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGU=');

@$core.Deprecated('Use createTodoResponseDescriptor instead')
const CreateTodoResponse$json = {
  '1': 'CreateTodoResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `CreateTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVUb2RvUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use updateTodoRequestDescriptor instead')
const UpdateTodoRequest$json = {
  '1': 'UpdateTodoRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'completed', '3': 3, '4': 1, '5': 8, '10': 'completed'},
  ],
};

/// Descriptor for `UpdateTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTodoRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUb2RvUmVxdWVzdBIOCgJpZBgBIAEoDVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdG'
    'xlEhwKCWNvbXBsZXRlZBgDIAEoCFIJY29tcGxldGVk');

@$core.Deprecated('Use updateTodoResponseDescriptor instead')
const UpdateTodoResponse$json = {
  '1': 'UpdateTodoResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `UpdateTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTodoResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVUb2RvUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use deleteTodoRequestDescriptor instead')
const DeleteTodoRequest$json = {
  '1': 'DeleteTodoRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTodoRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVUb2RvUmVxdWVzdBIOCgJpZBgBIAEoDVICaWQ=');

@$core.Deprecated('Use deleteTodoResponseDescriptor instead')
const DeleteTodoResponse$json = {
  '1': 'DeleteTodoResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTodoResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVUb2RvUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

