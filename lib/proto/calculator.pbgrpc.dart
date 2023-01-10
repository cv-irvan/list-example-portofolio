///
//  Generated code. Do not modify.
//  source: calculator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'calculator.pb.dart' as $0;
export 'calculator.pb.dart';

class CalculatorClient extends $grpc.Client {
  static final _$getProvinsi =
      $grpc.ClientMethod<$0.InputGetProvinsi, $0.MyResponse>(
          '/Calculator/GetProvinsi',
          ($0.InputGetProvinsi value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.MyResponse.fromBuffer(value));
  static final _$squareRoot = $grpc.ClientMethod<$0.Number, $0.Message>(
      '/Calculator/SquareRoot',
      ($0.Number value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Message.fromBuffer(value));

  CalculatorClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.MyResponse> getProvinsi($0.InputGetProvinsi request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProvinsi, request, options: options);
  }

  $grpc.ResponseFuture<$0.Message> squareRoot($0.Number request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$squareRoot, request, options: options);
  }
}

abstract class CalculatorServiceBase extends $grpc.Service {
  $core.String get $name => 'Calculator';

  CalculatorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.InputGetProvinsi, $0.MyResponse>(
        'GetProvinsi',
        getProvinsi_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InputGetProvinsi.fromBuffer(value),
        ($0.MyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Number, $0.Message>(
        'SquareRoot',
        squareRoot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Number.fromBuffer(value),
        ($0.Message value) => value.writeToBuffer()));
  }

  $async.Future<$0.MyResponse> getProvinsi_Pre($grpc.ServiceCall call,
      $async.Future<$0.InputGetProvinsi> request) async {
    return getProvinsi(call, await request);
  }

  $async.Future<$0.Message> squareRoot_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Number> request) async {
    return squareRoot(call, await request);
  }

  $async.Future<$0.MyResponse> getProvinsi(
      $grpc.ServiceCall call, $0.InputGetProvinsi request);
  $async.Future<$0.Message> squareRoot(
      $grpc.ServiceCall call, $0.Number request);
}
