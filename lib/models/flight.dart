import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight.freezed.dart';
part 'flight.g.dart';

@freezed
class Flight with _$Flight {
  const factory Flight({
    required DateTime time,
    required String departure,
    required String arrival,
    required String airline,
    required String boardingType,
    required String registration,
  }) = _Flight;

  factory Flight.fromJson(Map<String, dynamic> json)
    => _$FlightFromJson(json);
}