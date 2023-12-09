import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mileage_run/models/flight.dart';

final createFlightFormNotifierProvider =
  StateNotifierProvider((ref) => CreateFlightFormNotifier());

class CreateFlightFormNotifier extends StateNotifier<Flight> {
    CreateFlightFormNotifier()
      : super(
        Flight(
          time: DateTime.now().toIso8601String(),
          departure: 0,
          arrival: 0,
          airline: 0,
          boardingType: 0,
          registration: '',
        ),
      );

  Flight getAll() {
    return state;
  }

  void setTime(String time) {
    state = state.copyWith(time: time);
  }

  void setDeparture(int departure) {
    state = state.copyWith(departure: departure);
  }

  void setArrival(int arrival) {
    state = state.copyWith(arrival: arrival);
  }

  void setAirline(int airline) {
    state = state.copyWith(airline: airline);
  }

  void setBoardingType(int boardingType) {
    state = state.copyWith(boardingType: boardingType);
  }

  void setRegistration(String registration) {
    state = state.copyWith(registration: registration);
  }
}