import 'package:base_widgets/components/bottom_navigation_tab.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mileage_run/constants.dart';
import 'package:mileage_run/pages/favorite_page.dart';
import 'package:mileage_run/pages/flight_page.dart';
import 'package:mileage_run/pages/setting_page.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationTab(
      title: title,
      tabItems: tabItems,
      screens: const [
        FlightPage(),
        FavoritePage(),
        SettingPage(),
      ],
    );
  }
}
