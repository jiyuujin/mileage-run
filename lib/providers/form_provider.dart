import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mileage_run/models/flight_form.dart';

final createFlightFormNotifierProvider =
    NotifierProvider<CreateFlightFormNotifier, FlightForm>(
  CreateFlightFormNotifier.new,
);

class CreateFlightFormNotifier extends Notifier<FlightForm> {
  @override
  FlightForm build() {
    return FlightForm(
      time: DateTime.now().toIso8601String(),
      departure: 0,
      arrival: 0,
      airline: 0,
      boardingType: 0,
      registration: '',
    );
  }

  FlightForm getAll() {
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
