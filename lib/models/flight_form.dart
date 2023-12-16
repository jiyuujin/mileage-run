import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/flight_form.freezed.dart';
part 'generated/flight_form.g.dart';

@freezed
class FlightForm with _$FlightForm {
  const factory FlightForm({
    required String time,
    required int departure,
    required int arrival,
    required int airline,
    required int boardingType,
    required String registration,
  }) = _FlightForm;

  factory FlightForm.fromJson(Map<String, dynamic> json)
    => _$FlightFormFromJson(json);
}