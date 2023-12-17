import 'package:base_widgets/components/custom_button.dart';
import 'package:base_widgets/components/custom_text_field.dart';
import 'package:base_widgets/components/datepicker_field.dart';
import 'package:base_widgets/components/dropdown_field.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mileage_run/entities/aviation.dart';
import 'package:mileage_run/models/flight_form.dart';
import 'package:mileage_run/providers/form_provider.dart';

import 'package:mileage_run/utils/datetime.dart';

class AddPopupPage extends StatelessWidget {
  const AddPopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        await showDialog(
          context: context,
          builder: (_) {
            return SimpleDialog(
              title: const Text('Register Flight'),
              children: <Widget>[
                RegisterPage(
                  onRegistered: () {
                    Navigator.pop(context, 'Close Dialog');
                  },
                ),
              ],
            );
          },
        );
      },
      tooltip: 'Register Flight',
      child: const Icon(Icons.add),
    );
  }
}

class RegisterPage extends ConsumerWidget {
  final Function onRegistered;

  const RegisterPage({super.key, required this.onRegistered});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(createFlightFormNotifierProvider.notifier);

    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const RegisterForm(),
          CustomButton(
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            title: 'Add Flight',
            maxFinite: true,
            onPressed: () {
              FlightForm newFlight = controller.getAll();
              print(newFlight);
              FirebaseFirestore.instance.collection('flights').add({
                'time': newFlight.time,
                'departure': newFlight.departure,
                'arrival': newFlight.arrival,
                'airline': newFlight.airline,
                'boardingType': newFlight.boardingType,
                'registration': newFlight.registration,
              });
              onRegistered();
            },
          ),
        ],
      ),
    );
  }
}

class RegisterForm extends ConsumerWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(createFlightFormNotifierProvider.notifier);

    return Column(
      children: [
        DatepickerField(
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          title: 'BoardedAt',
          maxFinite: true,
          onChanged: (DateTime? value) {
            controller.setTime(value!.toIso8601StringWithTimeZoneOffset());
          },
        ),
        const Gap(12),
        DropdownField(
          textColor: Colors.blue,
          underlineColor: Colors.deepPurpleAccent,
          dropdownList: airports.map((a) => a.text).toList(),
          isExpanded: true,
          onChanged: (String? value) {
            for (var a in airports) {
              if (a.text == value) controller.setDeparture(a.value);
            }
          },
        ),
        const Gap(12),
        DropdownField(
          textColor: Colors.blue,
          underlineColor: Colors.deepPurpleAccent,
          dropdownList: airports.map((a) => a.text).toList(),
          isExpanded: true,
          onChanged: (String? value) {
            for (var a in airports) {
              if (a.text == value) controller.setArrival(a.value);
            }
          },
        ),
        const Gap(12),
        DropdownField(
          textColor: Colors.blue,
          underlineColor: Colors.deepPurpleAccent,
          dropdownList: airlines.map((a) => a.text).toList(),
          isExpanded: true,
          onChanged: (String? value) {
            for (var a in airlines) {
              if (a.text == value) controller.setAirline(a.value);
            }
          },
        ),
        const Gap(12),
        DropdownField(
          textColor: Colors.blue,
          underlineColor: Colors.deepPurpleAccent,
          dropdownList: boardingTypes.map((a) => a.text).toList(),
          isExpanded: true,
          onChanged: (String? value) {
            for (var a in boardingTypes) {
              if (a.text == value) controller.setBoardingType(a.value);
            }
          },
        ),
        const Gap(12),
        CustomTextField(
          controller: TextEditingController(),
          color: Colors.blue,
          fillColor: Colors.white,
          onChanged: (String? value) {
            controller.setRegistration(value!);
          },
        ),
      ],
    );
  }
}

