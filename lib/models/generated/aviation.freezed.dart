// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../aviation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Aviation _$AviationFromJson(Map<String, dynamic> json) {
  return _Aviation.fromJson(json);
}

/// @nodoc
mixin _$Aviation {
  int get value => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AviationCopyWith<Aviation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AviationCopyWith<$Res> {
  factory $AviationCopyWith(Aviation value, $Res Function(Aviation) then) =
      _$AviationCopyWithImpl<$Res, Aviation>;
  @useResult
  $Res call({int value, String text});
}

/// @nodoc
class _$AviationCopyWithImpl<$Res, $Val extends Aviation>
    implements $AviationCopyWith<$Res> {
  _$AviationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AviationImplCopyWith<$Res>
    implements $AviationCopyWith<$Res> {
  factory _$$AviationImplCopyWith(
          _$AviationImpl value, $Res Function(_$AviationImpl) then) =
      __$$AviationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, String text});
}

/// @nodoc
class __$$AviationImplCopyWithImpl<$Res>
    extends _$AviationCopyWithImpl<$Res, _$AviationImpl>
    implements _$$AviationImplCopyWith<$Res> {
  __$$AviationImplCopyWithImpl(
      _$AviationImpl _value, $Res Function(_$AviationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? text = null,
  }) {
    return _then(_$AviationImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AviationImpl with DiagnosticableTreeMixin implements _Aviation {
  const _$AviationImpl({required this.value, required this.text});

  factory _$AviationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AviationImplFromJson(json);

  @override
  final int value;
  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Aviation(value: $value, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Aviation'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AviationImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AviationImplCopyWith<_$AviationImpl> get copyWith =>
      __$$AviationImplCopyWithImpl<_$AviationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AviationImplToJson(
      this,
    );
  }
}

abstract class _Aviation implements Aviation {
  const factory _Aviation(
      {required final int value, required final String text}) = _$AviationImpl;

  factory _Aviation.fromJson(Map<String, dynamic> json) =
      _$AviationImpl.fromJson;

  @override
  int get value;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$AviationImplCopyWith<_$AviationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
