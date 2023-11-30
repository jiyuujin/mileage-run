import 'package:mileage_run/entities/aviation.dart';
import 'package:mileage_run/models/aviation.dart';

String getAirportName(int id) {
  var text = '';
  for (Aviation airport in airports) {
    if (airport.value == id) {
      text = airport.text;
    }
  }
  return text;
}

String getAirlineName(int id) {
  var text = '';
  for (Aviation airline in airlines) {
    if (airline.value == id) {
      text = airline.text;
    }
  }
  return text;
}

String getBoardingTypeName(int id) {
  var text = '';
  for (Aviation boardingType in boardingTypes) {
    if (boardingType.value == id) {
      text = boardingType.text;
    }
  }
  return text;
}