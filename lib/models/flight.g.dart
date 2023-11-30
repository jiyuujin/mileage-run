// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlightImpl _$$FlightImplFromJson(Map<String, dynamic> json) => _$FlightImpl(
      time: DateTime.parse(json['time'] as String),
      departure: json['departure'] as String,
      arrival: json['arrival'] as String,
      airline: json['airline'] as String,
      boardingType: json['boardingType'] as String,
      registration: json['registration'] as String,
    );

Map<String, dynamic> _$$FlightImplToJson(_$FlightImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'departure': instance.departure,
      'arrival': instance.arrival,
      'airline': instance.airline,
      'boardingType': instance.boardingType,
      'registration': instance.registration,
    };
