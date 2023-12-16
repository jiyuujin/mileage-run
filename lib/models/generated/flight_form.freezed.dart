// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../flight_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlightForm _$FlightFormFromJson(Map<String, dynamic> json) {
  return _FlightForm.fromJson(json);
}

/// @nodoc
mixin _$FlightForm {
  String get time => throw _privateConstructorUsedError;
  int get departure => throw _privateConstructorUsedError;
  int get arrival => throw _privateConstructorUsedError;
  int get airline => throw _privateConstructorUsedError;
  int get boardingType => throw _privateConstructorUsedError;
  String get registration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlightFormCopyWith<FlightForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightFormCopyWith<$Res> {
  factory $FlightFormCopyWith(
          FlightForm value, $Res Function(FlightForm) then) =
      _$FlightFormCopyWithImpl<$Res, FlightForm>;
  @useResult
  $Res call(
      {String time,
      int departure,
      int arrival,
      int airline,
      int boardingType,
      String registration});
}

/// @nodoc
class _$FlightFormCopyWithImpl<$Res, $Val extends FlightForm>
    implements $FlightFormCopyWith<$Res> {
  _$FlightFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? departure = null,
    Object? arrival = null,
    Object? airline = null,
    Object? boardingType = null,
    Object? registration = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as int,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as int,
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as int,
      boardingType: null == boardingType
          ? _value.boardingType
          : boardingType // ignore: cast_nullable_to_non_nullable
              as int,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlightFormImplCopyWith<$Res>
    implements $FlightFormCopyWith<$Res> {
  factory _$$FlightFormImplCopyWith(
          _$FlightFormImpl value, $Res Function(_$FlightFormImpl) then) =
      __$$FlightFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      int departure,
      int arrival,
      int airline,
      int boardingType,
      String registration});
}

/// @nodoc
class __$$FlightFormImplCopyWithImpl<$Res>
    extends _$FlightFormCopyWithImpl<$Res, _$FlightFormImpl>
    implements _$$FlightFormImplCopyWith<$Res> {
  __$$FlightFormImplCopyWithImpl(
      _$FlightFormImpl _value, $Res Function(_$FlightFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? departure = null,
    Object? arrival = null,
    Object? airline = null,
    Object? boardingType = null,
    Object? registration = null,
  }) {
    return _then(_$FlightFormImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as int,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as int,
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as int,
      boardingType: null == boardingType
          ? _value.boardingType
          : boardingType // ignore: cast_nullable_to_non_nullable
              as int,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlightFormImpl with DiagnosticableTreeMixin implements _FlightForm {
  const _$FlightFormImpl(
      {required this.time,
      required this.departure,
      required this.arrival,
      required this.airline,
      required this.boardingType,
      required this.registration});

  factory _$FlightFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlightFormImplFromJson(json);

  @override
  final String time;
  @override
  final int departure;
  @override
  final int arrival;
  @override
  final int airline;
  @override
  final int boardingType;
  @override
  final String registration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlightForm(time: $time, departure: $departure, arrival: $arrival, airline: $airline, boardingType: $boardingType, registration: $registration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FlightForm'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('departure', departure))
      ..add(DiagnosticsProperty('arrival', arrival))
      ..add(DiagnosticsProperty('airline', airline))
      ..add(DiagnosticsProperty('boardingType', boardingType))
      ..add(DiagnosticsProperty('registration', registration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlightFormImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrival, arrival) || other.arrival == arrival) &&
            (identical(other.airline, airline) || other.airline == airline) &&
            (identical(other.boardingType, boardingType) ||
                other.boardingType == boardingType) &&
            (identical(other.registration, registration) ||
                other.registration == registration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, departure, arrival,
      airline, boardingType, registration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlightFormImplCopyWith<_$FlightFormImpl> get copyWith =>
      __$$FlightFormImplCopyWithImpl<_$FlightFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlightFormImplToJson(
      this,
    );
  }
}

abstract class _FlightForm implements FlightForm {
  const factory _FlightForm(
      {required final String time,
      required final int departure,
      required final int arrival,
      required final int airline,
      required final int boardingType,
      required final String registration}) = _$FlightFormImpl;

  factory _FlightForm.fromJson(Map<String, dynamic> json) =
      _$FlightFormImpl.fromJson;

  @override
  String get time;
  @override
  int get departure;
  @override
  int get arrival;
  @override
  int get airline;
  @override
  int get boardingType;
  @override
  String get registration;
  @override
  @JsonKey(ignore: true)
  _$$FlightFormImplCopyWith<_$FlightFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
