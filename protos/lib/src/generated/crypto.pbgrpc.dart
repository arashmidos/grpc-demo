//
//  Generated code. Do not modify.
//  source: crypto.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'crypto.pb.dart' as $0;

export 'crypto.pb.dart';

@$pb.GrpcServiceName('CryptoService')
class CryptoServiceClient extends $grpc.Client {
  static final _$getCryptoById = $grpc.ClientMethod<$0.GetCryptoByIdRequest, $0.Crypto>(
      '/CryptoService/getCryptoById',
      ($0.GetCryptoByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Crypto.fromBuffer(value));
  static final _$getCryptoStream = $grpc.ClientMethod<$0.GetCryptoByIdRequest, $0.Crypto>(
      '/CryptoService/getCryptoStream',
      ($0.GetCryptoByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Crypto.fromBuffer(value));

  CryptoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Crypto> getCryptoById($0.GetCryptoByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCryptoById, request, options: options);
  }

  $grpc.ResponseStream<$0.Crypto> getCryptoStream($0.GetCryptoByIdRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getCryptoStream, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('CryptoService')
abstract class CryptoServiceBase extends $grpc.Service {
  $core.String get $name => 'CryptoService';

  CryptoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetCryptoByIdRequest, $0.Crypto>(
        'getCryptoById',
        getCryptoById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCryptoByIdRequest.fromBuffer(value),
        ($0.Crypto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCryptoByIdRequest, $0.Crypto>(
        'getCryptoStream',
        getCryptoStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.GetCryptoByIdRequest.fromBuffer(value),
        ($0.Crypto value) => value.writeToBuffer()));
  }

  $async.Future<$0.Crypto> getCryptoById_Pre($grpc.ServiceCall call, $async.Future<$0.GetCryptoByIdRequest> request) async {
    return getCryptoById(call, await request);
  }

  $async.Stream<$0.Crypto> getCryptoStream_Pre($grpc.ServiceCall call, $async.Future<$0.GetCryptoByIdRequest> request) async* {
    yield* getCryptoStream(call, await request);
  }

  $async.Future<$0.Crypto> getCryptoById($grpc.ServiceCall call, $0.GetCryptoByIdRequest request);
  $async.Stream<$0.Crypto> getCryptoStream($grpc.ServiceCall call, $0.GetCryptoByIdRequest request);
}
