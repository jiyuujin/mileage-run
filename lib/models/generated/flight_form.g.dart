// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../flight_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlightFormImpl _$$FlightFormImplFromJson(Map<String, dynamic> json) =>
    _$FlightFormImpl(
      time: json['time'] as String,
      departure: json['departure'] as int,
      arrival: json['arrival'] as int,
      airline: json['airline'] as int,
      boardingType: json['boardingType'] as int,
      registration: json['registration'] as String,
    );

Map<String, dynamic> _$$FlightFormImplToJson(_$FlightFormImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'airline': instance.airline,
      'boardingType': instance.boardingType,
      'registration': instance.registration,
    };
