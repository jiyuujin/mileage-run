// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../flight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlightImpl _$$FlightImplFromJson(Map<String, dynamic> json) => _$FlightImpl(
      time: json['time'] as String,
      departure: json['departure'] as int,
      arrival: json['arrival'] as int,
      airline: json['airline'] as int,
      boardingType: json['boardingType'] as int,
      registration: json['registration'] as String,
    );

Map<String, dynamic> _$$FlightImplToJson(_$FlightImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'airline': instance.airline,
      'boardingType': instance.boardingType,
      'registration': instance.registration,
    };
