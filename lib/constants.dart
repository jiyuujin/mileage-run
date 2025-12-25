// import 'package:base_widgets/models/tab_item.dart';
import 'package:flutter/material.dart';

const title = 'Mileage Run';

// final List<TabItem> tabItems = [
//   TabItem(icon: Icons.flight.codePoint, name: 'Home'),
//   TabItem(icon: Icons.photo_camera.codePoint, name: 'Photo'),
//   TabItem(icon: Icons.analytics.codePoint, name: 'Graph'),
// ];

final List<BottomNavigationBarItem> tabItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.flight),
    label: 'Flight',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.photo),
    label: 'Photo',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.analytics),
    label: 'Analysis',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.leaderboard),
    label: 'Ranking',
  ),
];

final List<Map<String, String>> photoLinks = [
  {
    'url': 'https://photos.app.goo.gl/XxbgDmBbjxk1HqqU9',
    'title': 'Frequent Flyer 2025',
  },
  {
    'url': 'https://photos.app.goo.gl/VJmU2UvGcb3zxxwm9',
    'title': 'Frequent Flyer 2024',
  },
  {
    'url': 'https://photos.app.goo.gl/ZngZBdQ18QN7guKs7',
    'title': 'Frequent Flyer 2023',
  },
];
