import 'package:base_widgets/components/bottom_navigation_tab.dart';
import 'package:flutter/material.dart';
import 'package:mileage_run/constants.dart';
import 'package:mileage_run/pages/flight_page.dart';
import 'package:mileage_run/pages/register_page.dart';
import 'package:mileage_run/pages/setting_page.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationTab(
      title: title,
      tabItems: tabItems,
      screens: const [
        FlightPage(),
        RegisterPage(),
        SettingPage(),
      ],
    );
  }
}