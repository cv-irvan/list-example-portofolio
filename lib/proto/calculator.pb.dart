///
//  Generated code. Do not modify.
//  source: calculator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Number extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Number', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Number._() : super();
  factory Number({
    $core.double? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Number.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Number.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Number clone() => Number()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Number copyWith(void Function(Number) updates) => super.copyWith((message) => updates(message as Number)) as Number; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Number create() => Number._();
  Number createEmptyInstance() => create();
  static $pb.PbList<Number> createRepeated() => $pb.PbList<Number>();
  @$core.pragma('dart2js:noInline')
  static Number getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Number>(create);
  static Number? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OF)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message({
    $core.double? value,
    $core.String? message,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class InputGetProvinsi extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InputGetProvinsi', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kodeProvinsi')
    ..hasRequiredFields = false
  ;

  InputGetProvinsi._() : super();
  factory InputGetProvinsi({
    $fixnum.Int64? kodeProvinsi,
  }) {
    final _result = create();
    if (kodeProvinsi != null) {
      _result.kodeProvinsi = kodeProvinsi;
    }
    return _result;
  }
  factory InputGetProvinsi.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InputGetProvinsi.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InputGetProvinsi clone() => InputGetProvinsi()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InputGetProvinsi copyWith(void Function(InputGetProvinsi) updates) => super.copyWith((message) => updates(message as InputGetProvinsi)) as InputGetProvinsi; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InputGetProvinsi create() => InputGetProvinsi._();
  InputGetProvinsi createEmptyInstance() => create();
  static $pb.PbList<InputGetProvinsi> createRepeated() => $pb.PbList<InputGetProvinsi>();
  @$core.pragma('dart2js:noInline')
  static InputGetProvinsi getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InputGetProvinsi>(create);
  static InputGetProvinsi? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get kodeProvinsi => $_getI64(0);
  @$pb.TagNumber(1)
  set kodeProvinsi($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKodeProvinsi() => $_has(0);
  @$pb.TagNumber(1)
  void clearKodeProvinsi() => clearField(1);
}

class OutputGetProvinsi extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OutputGetProvinsi', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kodeProvinsi')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'namaProvinsi')
    ..hasRequiredFields = false
  ;

  OutputGetProvinsi._() : super();
  factory OutputGetProvinsi({
    $core.String? kodeProvinsi,
    $core.String? namaProvinsi,
  }) {
    final _result = create();
    if (kodeProvinsi != null) {
      _result.kodeProvinsi = kodeProvinsi;
    }
    if (namaProvinsi != null) {
      _result.namaProvinsi = namaProvinsi;
    }
    return _result;
  }
  factory OutputGetProvinsi.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OutputGetProvinsi.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OutputGetProvinsi clone() => OutputGetProvinsi()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OutputGetProvinsi copyWith(void Function(OutputGetProvinsi) updates) => super.copyWith((message) => updates(message as OutputGetProvinsi)) as OutputGetProvinsi; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutputGetProvinsi create() => OutputGetProvinsi._();
  OutputGetProvinsi createEmptyInstance() => create();
  static $pb.PbList<OutputGetProvinsi> createRepeated() => $pb.PbList<OutputGetProvinsi>();
  @$core.pragma('dart2js:noInline')
  static OutputGetProvinsi getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OutputGetProvinsi>(create);
  static OutputGetProvinsi? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kodeProvinsi => $_getSZ(0);
  @$pb.TagNumber(1)
  set kodeProvinsi($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKodeProvinsi() => $_has(0);
  @$pb.TagNumber(1)
  void clearKodeProvinsi() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get namaProvinsi => $_getSZ(1);
  @$pb.TagNumber(2)
  set namaProvinsi($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNamaProvinsi() => $_has(1);
  @$pb.TagNumber(2)
  void clearNamaProvinsi() => clearField(2);
}

class MyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MyResponse', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rc')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rcDesc')
    ..pc<OutputGetProvinsi>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'provinsi', $pb.PbFieldType.PM, subBuilder: OutputGetProvinsi.create)
    ..hasRequiredFields = false
  ;

  MyResponse._() : super();
  factory MyResponse({
    $core.String? rc,
    $core.String? rcDesc,
    $core.Iterable<OutputGetProvinsi>? provinsi,
  }) {
    final _result = create();
    if (rc != null) {
      _result.rc = rc;
    }
    if (rcDesc != null) {
      _result.rcDesc = rcDesc;
    }
    if (provinsi != null) {
      _result.provinsi.addAll(provinsi);
    }
    return _result;
  }
  factory MyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyResponse clone() => MyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyResponse copyWith(void Function(MyResponse) updates) => super.copyWith((message) => updates(message as MyResponse)) as MyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyResponse create() => MyResponse._();
  MyResponse createEmptyInstance() => create();
  static $pb.PbList<MyResponse> createRepeated() => $pb.PbList<MyResponse>();
  @$core.pragma('dart2js:noInline')
  static MyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyResponse>(create);
  static MyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rc => $_getSZ(0);
  @$pb.TagNumber(1)
  set rc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRc() => $_has(0);
  @$pb.TagNumber(1)
  void clearRc() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get rcDesc => $_getSZ(1);
  @$pb.TagNumber(2)
  set rcDesc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRcDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearRcDesc() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<OutputGetProvinsi> get provinsi => $_getList(2);
}

