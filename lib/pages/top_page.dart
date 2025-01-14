import 'package:base_widgets/components/bottom_navigation_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mileage_run/constants.dart';
import 'package:mileage_run/pages/analysis_page.dart';
import 'package:mileage_run/pages/flight_page.dart';
import 'package:mileage_run/pages/photo_page.dart';
import 'package:mileage_run/pages/register_page.dart';
import 'package:mileage_run/pages/upload_page.dart';

class TopPage extends HookWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationTab(
      title: title,
      tabItems: tabItems,
      screens: const [
        Scaffold(
          body: FlightPage(),
          floatingActionButton: AddPopupPage(),
        ),
        Scaffold(
          body: PhotoPage(),
          floatingActionButton: AddModalPage(),
        ),
        Scaffold(
          body: AnalysisPage(),
        ),
      ],
    );
  }
}
