//
//  Generated code. Do not modify.
//  source: services.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetTodoRequest extends $pb.GeneratedMessage {
  factory GetTodoRequest() => create();
  GetTodoRequest._() : super();
  factory GetTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTodoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pokerlab'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'timestamp', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTodoRequest clone() => GetTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTodoRequest copyWith(void Function(GetTodoRequest) updates) => super.copyWith((message) => updates(message as GetTodoRequest)) as GetTodoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTodoRequest create() => GetTodoRequest._();
  GetTodoRequest createEmptyInstance() => create();
  static $pb.PbList<GetTodoRequest> createRepeated() => $pb.PbList<GetTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTodoRequest>(create);
  static GetTodoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);
}

class Todo extends $pb.GeneratedMessage {
  factory Todo() => create();
  Todo._() : super();
  factory Todo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Todo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Todo', package: const $pb.PackageName(_omitMessageNames ? '' : 'pokerlab'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOB(3, _omitFieldNames ? '' : 'completed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Todo clone() => Todo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Todo copyWith(void Function(Todo) updates) => super.copyWith((message) => updates(message as Todo)) as Todo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Todo create() => Todo._();
  Todo createEmptyInstance() => create();
  static $pb.PbList<Todo> createRepeated() => $pb.PbList<Todo>();
  @$core.pragma('dart2js:noInline')
  static Todo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Todo>(create);
  static Todo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get completed => $_getBF(2);
  @$pb.TagNumber(3)
  set completed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompleted() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompleted() => clearField(3);
}

class GetTodoResponse extends $pb.GeneratedMessage {
  factory GetTodoResponse() => create();
  GetTodoResponse._() : super();
  factory GetTodoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTodoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTodoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'pokerlab'), createEmptyInstance: create)
    ..pc<Todo>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Todo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTodoResponse clone() => GetTodoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTodoResponse copyWith(void Function(GetTodoResponse) updates) => super.copyWith((message) => updates(message as GetTodoResponse)) as GetTodoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTodoResponse create() => GetTodoResponse._();
  GetTodoResponse createEmptyInstance() => create();
  static $pb.PbList<GetTodoResponse> createRepeated() => $pb.PbList<GetTodoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTodoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTodoResponse>(create);
  static GetTodoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Todo> get items => $_getList(0);
}

class CreateTodoRequest extends $pb.GeneratedMessage {
  factory CreateTodoRequest() => create();
  CreateTodoRequest._() : super();
  factory CreateTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTodoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pokerlab'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTodoRequest clone() => CreateTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTodoRequest copyWith(void Function(CreateTodoRequest) updates) => super.copyWith((message) => updates(message as CreateTodoRequest)) as CreateTodoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTodoRequest create() => CreateTodoRequest._();
  CreateTodoRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTodoRequest> createRepeated() => $pb.PbList<CreateTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTodoRequest>(create);
  static CreateTodoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);
}

class CreateTodoResponse extends $pb.GeneratedMessage {
  factory CreateTodoResponse() => create();
  CreateTodoResponse._() : super();
  factory CreateTodoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTodoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTodoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'pokerlab'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTodoResponse clone() => CreateTodoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTodoResponse copyWith(void Function(CreateTodoResponse) updates) => super.copyWith((message) => updates(message as CreateTodoResponse)) as CreateTodoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTodoResponse create() => CreateTodoResponse._();
  CreateTodoResponse createEmptyInstance() => create();
  static $pb.PbList<CreateTodoResponse> createRepeated() => $pb.PbList<CreateTodoResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateTodoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTodoResponse>(create);
  static CreateTodoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class UpdateTodoRequest extends $pb.GeneratedMessage {
  factory UpdateTodoRequest() => create();
  UpdateTodoRequest._() : super();
  factory UpdateTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTodoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pokerlab'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOB(3, _omitFieldNames ? '' : 'completed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTodoRequest clone() => UpdateTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTodoRequest copyWith(void Function(UpdateTodoRequest) updates) => super.copyWith((message) => updates(message as UpdateTodoRequest)) as UpdateTodoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTodoRequest create() => UpdateTodoRequest._();
  UpdateTodoRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateTodoRequest> createRepeated() => $pb.PbList<UpdateTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTodoRequest>(create);
  static UpdateTodoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get completed => $_getBF(2);
  @$pb.TagNumber(3)
  set completed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompleted() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompleted() => clearField(3);
}

class UpdateTodoResponse extends $pb.GeneratedMessage {
  factory UpdateTodoResponse() => create();
  UpdateTodoResponse._() : super();
  factory UpdateTodoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTodoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTodoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'pokerlab'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTodoResponse clone() => UpdateTodoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTodoResponse copyWith(void Function(UpdateTodoResponse) updates) => super.copyWith((message) => updates(message as UpdateTodoResponse)) as UpdateTodoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTodoResponse create() => UpdateTodoResponse._();
  UpdateTodoResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateTodoResponse> createRepeated() => $pb.PbList<UpdateTodoResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateTodoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTodoResponse>(create);
  static UpdateTodoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class DeleteTodoRequest extends $pb.GeneratedMessage {
  factory DeleteTodoRequest() => create();
  DeleteTodoRequest._() : super();
  factory DeleteTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTodoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pokerlab'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTodoRequest clone() => DeleteTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTodoRequest copyWith(void Function(DeleteTodoRequest) updates) => super.copyWith((message) => updates(message as DeleteTodoRequest)) as DeleteTodoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTodoRequest create() => DeleteTodoRequest._();
  DeleteTodoRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteTodoRequest> createRepeated() => $pb.PbList<DeleteTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTodoRequest>(create);
  static DeleteTodoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteTodoResponse extends $pb.GeneratedMessage {
  factory DeleteTodoResponse() => create();
  DeleteTodoResponse._() : super();
  factory DeleteTodoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTodoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTodoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'pokerlab'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTodoResponse clone() => DeleteTodoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTodoResponse copyWith(void Function(DeleteTodoResponse) updates) => super.copyWith((message) => updates(message as DeleteTodoResponse)) as DeleteTodoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTodoResponse create() => DeleteTodoResponse._();
  DeleteTodoResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteTodoResponse> createRepeated() => $pb.PbList<DeleteTodoResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteTodoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTodoResponse>(create);
  static DeleteTodoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
