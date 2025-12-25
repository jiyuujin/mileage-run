// import 'package:base_widgets/components/custom_button.dart';
// import 'package:base_widgets/components/custom_text_field.dart';
// import 'package:base_widgets/components/datepicker_field.dart';
// import 'package:base_widgets/components/dropdown_field.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
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
          builder: (_) => Dialog(
            insetPadding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Register Flight',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(16),
                  RegisterPage(
                    onRegistered: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
      tooltip: 'Register Flight',
      child: const Icon(Icons.add),
    );
  }
}

class RegisterPage extends ConsumerStatefulWidget {
  final VoidCallback? onRegistered;

  const RegisterPage({super.key, this.onRegistered});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  DateTime? boardedAt;
  int? departure;
  int? arrival;
  int? airline;
  int? boardingType;

  final registrationController = TextEditingController();

  @override
  void dispose() {
    registrationController.dispose();
    super.dispose();
  }

  String? _validateRequired(dynamic value, String fieldName) {
    if (value == null || (value is String && value.isEmpty)) {
      return '$fieldName is required';
    }
    return null;
  }

  String? _validateDeparture(int? value) {
    final baseCheck = _validateRequired(value, 'Departure');
    if (baseCheck != null) return baseCheck;
    if (arrival != null && value == arrival) {
      return 'Departure and Arrival cannot be the same';
    }
    return null;
  }

  String? _validateArrival(int? value) {
    final baseCheck = _validateRequired(value, 'Arrival');
    if (baseCheck != null) return baseCheck;
    if (departure != null && value == departure) {
      return 'Arrival and Departure cannot be the same';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(createFlightFormNotifierProvider.notifier);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            FormField<DateTime>(
              validator: (value) => _validateRequired(boardedAt, 'BoardedAt'),
              builder: (field) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () async {
                      final pickedDate = await showDatePicker(
                        context: context,
                        initialDate: boardedAt ?? DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        setState(() => boardedAt = pickedDate);
                        controller.setTime(boardedAt!.toIso8601StringWithTimeZoneOffset());
                        field.didChange(boardedAt);
                      }
                    },
                    child: InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'BoardedAt',
                        filled: true,
                        fillColor: Colors.blue,
                        errorText: field.errorText,
                        suffixIcon: const Icon(Icons.calendar_today, color: Colors.white),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text(
                        boardedAt != null
                            ? DateFormat('yyyy/MM/dd').format(boardedAt!)
                            : 'Select Date',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Gap(16),
                ],
              ),
            ),
            DropdownButtonFormField<int>(
              value: departure,
              items: airports
                  .map((a) => DropdownMenuItem(
                        value: a.value,
                        child: Text(a.text),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() => departure = value);
                controller.setDeparture(value!);
              },
              validator: _validateDeparture,
              decoration: InputDecoration(
                labelText: 'Departure',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                filled: true,
                fillColor: Colors.blue.shade50,
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
            ),
            const Gap(16),
            DropdownButtonFormField<int>(
              value: arrival,
              items: airports
                  .map((a) => DropdownMenuItem(
                        value: a.value,
                        child: Text(a.text),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() => arrival = value);
                controller.setArrival(value!);
              },
              validator: _validateArrival,
              decoration: InputDecoration(
                labelText: 'Arrival',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                filled: true,
                fillColor: Colors.blue.shade50,
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
            ),
            const Gap(16),
            DropdownButtonFormField<int>(
              value: airline,
              items: airlines
                  .map((a) => DropdownMenuItem(
                        value: a.value,
                        child: Text(a.text),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() => airline = value);
                controller.setAirline(value!);
              },
              validator: (value) => _validateRequired(value, 'Airline'),
              decoration: InputDecoration(
                labelText: 'Airline',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                filled: true,
                fillColor: Colors.blue.shade50,
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
            ),
            const Gap(16),
            DropdownButtonFormField<int>(
              value: boardingType,
              items: boardingTypes
                  .map((a) => DropdownMenuItem(
                        value: a.value,
                        child: Text(a.text),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() => boardingType = value);
                controller.setBoardingType(value!);
              },
              validator: (value) => _validateRequired(value, 'Boarding Type'),
              decoration: InputDecoration(
                labelText: 'Boarding Type',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                filled: true,
                fillColor: Colors.blue.shade50,
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
            ),
            const Gap(16),
            TextFormField(
              controller: registrationController,
              decoration: InputDecoration(
                labelText: 'Registration',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                filled: true,
                fillColor: Colors.blue.shade50,
                hintText: 'Enter registration number',
              ),
              onChanged: (value) => controller.setRegistration(value),
              validator: (value) => _validateRequired(value, 'Registration'),
            ),
            const Gap(24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  FlightForm newFlight = controller.getAll();
                  FirebaseFirestore.instance.collection('flights').add({
                    'time': newFlight.time,
                    'departure': newFlight.departure,
                    'arrival': newFlight.arrival,
                    'airline': newFlight.airline,
                    'boardingType': newFlight.boardingType,
                    'registration': newFlight.registration,
                  });
                  if (widget.onRegistered != null) {
                    widget.onRegistered!();
                  }
                }
              },
              child: const Text('Register', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
