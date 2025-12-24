// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../aviation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AviationImpl _$$AviationImplFromJson(Map<String, dynamic> json) =>
    _$AviationImpl(
      value: (json['value'] as num).toInt(),
      text: json['text'] as String,
      position: json['position'] == null
          ? null
          : Position.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AviationImplToJson(_$AviationImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
      'position': instance.position,
    };

_$PositionImpl _$$PositionImplFromJson(Map<String, dynamic> json) =>
    _$PositionImpl(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$PositionImplToJson(_$PositionImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
