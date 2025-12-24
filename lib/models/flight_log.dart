import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'generated/flight_log.freezed.dart';
part 'generated/flight_log.g.dart';

@freezed
class FlightLog with _$FlightLog {
  const factory FlightLog({
    required DateTime time,
    required LatLng from,
    required LatLng to,
  }) = _FlightLog;

  factory FlightLog.fromJson(Map<String, dynamic> json)
    => _$FlightLogFromJson(json);
}
