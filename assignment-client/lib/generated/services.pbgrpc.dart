//
//  Generated code. Do not modify.
//  source: services.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'services.pb.dart' as $0;

export 'services.pb.dart';

@$pb.GrpcServiceName('pokerlab.TodoService')
class TodoServiceClient extends $grpc.Client {
  static final _$getTodos = $grpc.ClientMethod<$0.GetTodoRequest, $0.GetTodoResponse>(
      '/pokerlab.TodoService/GetTodos',
      ($0.GetTodoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetTodoResponse.fromBuffer(value));
  static final _$createTodo = $grpc.ClientMethod<$0.CreateTodoRequest, $0.CreateTodoResponse>(
      '/pokerlab.TodoService/CreateTodo',
      ($0.CreateTodoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateTodoResponse.fromBuffer(value));
  static final _$updateTodo = $grpc.ClientMethod<$0.UpdateTodoRequest, $0.UpdateTodoResponse>(
      '/pokerlab.TodoService/UpdateTodo',
      ($0.UpdateTodoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateTodoResponse.fromBuffer(value));
  static final _$deleteTodo = $grpc.ClientMethod<$0.DeleteTodoRequest, $0.DeleteTodoResponse>(
      '/pokerlab.TodoService/DeleteTodo',
      ($0.DeleteTodoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteTodoResponse.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.GetTodoResponse> getTodos($0.GetTodoRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getTodos, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.CreateTodoResponse> createTodo($0.CreateTodoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateTodoResponse> updateTodo($0.UpdateTodoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteTodoResponse> deleteTodo($0.DeleteTodoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTodo, request, options: options);
  }
}

@$pb.GrpcServiceName('pokerlab.TodoService')
abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'pokerlab.TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetTodoRequest, $0.GetTodoResponse>(
        'GetTodos',
        getTodos_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.GetTodoRequest.fromBuffer(value),
        ($0.GetTodoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateTodoRequest, $0.CreateTodoResponse>(
        'CreateTodo',
        createTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTodoRequest.fromBuffer(value),
        ($0.CreateTodoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateTodoRequest, $0.UpdateTodoResponse>(
        'UpdateTodo',
        updateTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateTodoRequest.fromBuffer(value),
        ($0.UpdateTodoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteTodoRequest, $0.DeleteTodoResponse>(
        'DeleteTodo',
        deleteTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteTodoRequest.fromBuffer(value),
        ($0.DeleteTodoResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.GetTodoResponse> getTodos_Pre($grpc.ServiceCall call, $async.Future<$0.GetTodoRequest> request) async* {
    yield* getTodos(call, await request);
  }

  $async.Future<$0.CreateTodoResponse> createTodo_Pre($grpc.ServiceCall call, $async.Future<$0.CreateTodoRequest> request) async {
    return createTodo(call, await request);
  }

  $async.Future<$0.UpdateTodoResponse> updateTodo_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateTodoRequest> request) async {
    return updateTodo(call, await request);
  }

  $async.Future<$0.DeleteTodoResponse> deleteTodo_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteTodoRequest> request) async {
    return deleteTodo(call, await request);
  }

  $async.Stream<$0.GetTodoResponse> getTodos($grpc.ServiceCall call, $0.GetTodoRequest request);
  $async.Future<$0.CreateTodoResponse> createTodo($grpc.ServiceCall call, $0.CreateTodoRequest request);
  $async.Future<$0.UpdateTodoResponse> updateTodo($grpc.ServiceCall call, $0.UpdateTodoRequest request);
  $async.Future<$0.DeleteTodoResponse> deleteTodo($grpc.ServiceCall call, $0.DeleteTodoRequest request);
}
