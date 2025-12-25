// import 'package:base_widgets/components/bottom_navigation_tab.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mileage_run/constants.dart';
import 'package:mileage_run/pages/analysis_page.dart';
import 'package:mileage_run/pages/flight_page.dart';
import 'package:mileage_run/pages/photo_page.dart';
import 'package:mileage_run/pages/register_page.dart';
import 'package:mileage_run/pages/upload_page.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  final user = FirebaseAuth.instance.currentUser;

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const FlightPage(),
    const PhotoPage(),
    AnalysisPage(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, ${user?.email ?? ''}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
      body: _screens[_selectedIndex],
      floatingActionButton: _selectedIndex == 0
          ? const AddPopupPage()
          : _selectedIndex == 1
              ? const AddModalPage()
              : null,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: tabItems,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
