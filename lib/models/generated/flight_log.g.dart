// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../flight_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlightLogImpl _$$FlightLogImplFromJson(Map<String, dynamic> json) =>
    _$FlightLogImpl(
      time: DateTime.parse(json['time'] as String),
      from: LatLng.fromJson(json['from'] as Map<String, dynamic>),
      to: LatLng.fromJson(json['to'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FlightLogImplToJson(_$FlightLogImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'from': instance.from,
      'to': instance.to,
    };
