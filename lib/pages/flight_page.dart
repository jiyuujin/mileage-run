// import 'package:base_widgets/components/boarding_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mileage_run/components/boarding_card.dart';
import 'package:mileage_run/domains/aviation_service.dart';
// import 'package:mileage_run/utils/datetime.dart';

class FlightPage extends StatelessWidget {
  const FlightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.lightBlue),
      child: const FlightList(),
    );
  }
}

class FlightList extends StatelessWidget {
  const FlightList({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
        .collection('flights')
        .orderBy('time', descending: true)
        .snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            final data = document.data() as Map<String, dynamic>;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: BoardingCard(
                boardedAt: data['time'],
                departure: getAirportName(int.parse(data['departure'].toString())),
                arrival: getAirportName(int.parse(data['arrival'].toString())),
                airline: getAirlineName(int.parse(data['airline'].toString())),
                boardingType: getBoardingTypeName(int.parse(data['boardingType'].toString())),
                registration: data['registration'],
              ),
            );
          }).toList(),
        );
      }
    );
  }
}