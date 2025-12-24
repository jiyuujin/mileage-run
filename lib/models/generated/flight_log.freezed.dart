// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../flight_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlightLog _$FlightLogFromJson(Map<String, dynamic> json) {
  return _FlightLog.fromJson(json);
}

/// @nodoc
mixin _$FlightLog {
  DateTime get time => throw _privateConstructorUsedError;
  LatLng get from => throw _privateConstructorUsedError;
  LatLng get to => throw _privateConstructorUsedError;

  /// Serializes this FlightLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlightLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlightLogCopyWith<FlightLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightLogCopyWith<$Res> {
  factory $FlightLogCopyWith(FlightLog value, $Res Function(FlightLog) then) =
      _$FlightLogCopyWithImpl<$Res, FlightLog>;
  @useResult
  $Res call({DateTime time, LatLng from, LatLng to});
}

/// @nodoc
class _$FlightLogCopyWithImpl<$Res, $Val extends FlightLog>
    implements $FlightLogCopyWith<$Res> {
  _$FlightLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlightLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as LatLng,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlightLogImplCopyWith<$Res>
    implements $FlightLogCopyWith<$Res> {
  factory _$$FlightLogImplCopyWith(
          _$FlightLogImpl value, $Res Function(_$FlightLogImpl) then) =
      __$$FlightLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime time, LatLng from, LatLng to});
}

/// @nodoc
class __$$FlightLogImplCopyWithImpl<$Res>
    extends _$FlightLogCopyWithImpl<$Res, _$FlightLogImpl>
    implements _$$FlightLogImplCopyWith<$Res> {
  __$$FlightLogImplCopyWithImpl(
      _$FlightLogImpl _value, $Res Function(_$FlightLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlightLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$FlightLogImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as LatLng,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlightLogImpl with DiagnosticableTreeMixin implements _FlightLog {
  const _$FlightLogImpl(
      {required this.time, required this.from, required this.to});

  factory _$FlightLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlightLogImplFromJson(json);

  @override
  final DateTime time;
  @override
  final LatLng from;
  @override
  final LatLng to;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlightLog(time: $time, from: $from, to: $to)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FlightLog'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlightLogImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, from, to);

  /// Create a copy of FlightLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlightLogImplCopyWith<_$FlightLogImpl> get copyWith =>
      __$$FlightLogImplCopyWithImpl<_$FlightLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlightLogImplToJson(
      this,
    );
  }
}

abstract class _FlightLog implements FlightLog {
  const factory _FlightLog(
      {required final DateTime time,
      required final LatLng from,
      required final LatLng to}) = _$FlightLogImpl;

  factory _FlightLog.fromJson(Map<String, dynamic> json) =
      _$FlightLogImpl.fromJson;

  @override
  DateTime get time;
  @override
  LatLng get from;
  @override
  LatLng get to;

  /// Create a copy of FlightLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlightLogImplCopyWith<_$FlightLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
