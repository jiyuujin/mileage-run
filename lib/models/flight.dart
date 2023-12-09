import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight.freezed.dart';
part 'flight.g.dart';

@freezed
class Flight with _$Flight {
  const factory Flight({
    required String time,
    required int departure,
    required int arrival,
    required int airline,
    required int boardingType,
    required String registration,
  }) = _Flight;

  factory Flight.fromJson(Map<String, dynamic> json)
    => _$FlightFromJson(json);
}