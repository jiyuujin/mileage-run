import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:mileage_run/domains/aviation_service.dart';
import 'package:mileage_run/models/flight_log.dart';

class AnalysisPage extends StatelessWidget {
  AnalysisPage({super.key});

  final ValueNotifier<int> selectedYear = ValueNotifier(2025);

  Stream<List<FlightLog>> flightStream() {
    return FirebaseFirestore.instance
        .collection('flights')
        .orderBy('time') // ISO 文字列前提
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;

        final departure = int.parse(data['departure'].toString());
        final arrival = int.parse(data['arrival'].toString());

        final depPos = getAirportPosition(departure);
        final arrPos = getAirportPosition(arrival);

        final timeString = data['time'] as String;
        final time = DateTime.parse(timeString);

        return FlightLog(
          time: time,
          from: LatLng(depPos.latitude, depPos.longitude),
          to: LatLng(arrPos.latitude, arrPos.longitude),
        );
      })
        // .where((f) => f.time.year == 2025)
        .toList();
    });
  }

  List<Polyline> buildPolylines(List<FlightLog> flights) {
    return flights.map((flight) {
      return Polyline(
        points: [flight.from, flight.to],
        strokeWidth: 3,
        color: Colors.blue.withOpacity(0.35),
      );
    }).toList();
  }

void startYearAnimation() async {
  selectedYear.value = 2012;
  for (int year = selectedYear.value; year <= 2025; year++) {
    selectedYear.value = year;
    await Future.delayed(const Duration(milliseconds: 750));
  }
}

  @override
  Widget build(BuildContext context) {
    Widget buildYearSlider() {
      return ValueListenableBuilder<int>(
        valueListenable: selectedYear,
        builder: (context, year, _) {
          return Column(
            children: [
              Text(
                year.toString(),
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(child: Slider(
                    min: 2012,
                    max: 2025,
                    divisions: 2025 - 2012 + 1,
                    value: selectedYear.value.toDouble(),
                    label: selectedYear.value.toString(),
                    onChanged: (value) {
                      selectedYear.value = value.toInt();
                    },
                  )),
                  IconButton(
                    icon: const Icon(Icons.play_arrow),
                    onPressed: startYearAnimation,
                  ),
                ],
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flight Analysis'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ValueListenableBuilder<int>(
              valueListenable: selectedYear,
              builder: (context, year, _) {
                return StreamBuilder<List<FlightLog>>(
                  stream: flightStream(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
                    if (snapshot.hasError) return Center(child: Text(snapshot.error.toString()));

                    final flights = filterByYear(snapshot.data!, year);
                    final polylines = buildPolylines(flights);

                    return Stack(
                      children: [
                        FlutterMap(
                          options: const MapOptions(
                            initialCenter: LatLng(35.6895, 139.6917),
                            initialZoom: 5,
                          ),
                          children: [
                            TileLayer(
                              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                              userAgentPackageName: 'com.mileage.run',
                            ),
                            PolylineLayer(polylines: polylines),
                          ],
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.white.withOpacity(0.8),
                            child: Text(
                              'Flights: ${flights.length}, Total Distance: ${totalDistance(flights).toStringAsFixed(0)} km',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: buildYearSlider(),
          ),
        ],
      ),
    );
  }
}

List<FlightLog> filterByYear(List<FlightLog> flights, int year) {
  return flights.where((f) => f.time.year == year).toList();
}

double totalDistance(List<FlightLog> flights) {
  final distance = Distance();
  double total = 0.0;

  for (final f in flights) {
    total += distance.as(LengthUnit.Kilometer, f.from, f.to);
  }

  return total;
}
