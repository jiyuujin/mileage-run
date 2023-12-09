// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Flight _$FlightFromJson(Map<String, dynamic> json) {
  return _Flight.fromJson(json);
}

/// @nodoc
mixin _$Flight {
  String get time => throw _privateConstructorUsedError;
  int get departure => throw _privateConstructorUsedError;
  int get arrival => throw _privateConstructorUsedError;
  int get airline => throw _privateConstructorUsedError;
  int get boardingType => throw _privateConstructorUsedError;
  String get registration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlightCopyWith<Flight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightCopyWith<$Res> {
  factory $FlightCopyWith(Flight value, $Res Function(Flight) then) =
      _$FlightCopyWithImpl<$Res, Flight>;
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
class _$FlightCopyWithImpl<$Res, $Val extends Flight>
    implements $FlightCopyWith<$Res> {
  _$FlightCopyWithImpl(this._value, this._then);

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
abstract class _$$FlightImplCopyWith<$Res> implements $FlightCopyWith<$Res> {
  factory _$$FlightImplCopyWith(
          _$FlightImpl value, $Res Function(_$FlightImpl) then) =
      __$$FlightImplCopyWithImpl<$Res>;
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
class __$$FlightImplCopyWithImpl<$Res>
    extends _$FlightCopyWithImpl<$Res, _$FlightImpl>
    implements _$$FlightImplCopyWith<$Res> {
  __$$FlightImplCopyWithImpl(
      _$FlightImpl _value, $Res Function(_$FlightImpl) _then)
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
    return _then(_$FlightImpl(
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
class _$FlightImpl with DiagnosticableTreeMixin implements _Flight {
  const _$FlightImpl(
      {required this.time,
      required this.departure,
      required this.arrival,
      required this.airline,
      required this.boardingType,
      required this.registration});

  factory _$FlightImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlightImplFromJson(json);

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
    return 'Flight(time: $time, departure: $departure, arrival: $arrival, airline: $airline, boardingType: $boardingType, registration: $registration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Flight'))
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
            other is _$FlightImpl &&
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
  _$$FlightImplCopyWith<_$FlightImpl> get copyWith =>
      __$$FlightImplCopyWithImpl<_$FlightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlightImplToJson(
      this,
    );
  }
}

abstract class _Flight implements Flight {
  const factory _Flight(
      {required final String time,
      required final int departure,
      required final int arrival,
      required final int airline,
      required final int boardingType,
      required final String registration}) = _$FlightImpl;

  factory _Flight.fromJson(Map<String, dynamic> json) = _$FlightImpl.fromJson;

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
  _$$FlightImplCopyWith<_$FlightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
