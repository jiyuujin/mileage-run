import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mileage_run/domains/aviation_service.dart';

enum YearFilter {
  all,
  y2023,
  y2024,
  y2025,
}

class RankingPage extends StatefulWidget {
  const RankingPage({super.key});

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  YearFilter _selectedYear = YearFilter.all;

  Map<int, int> _countByField(List<QueryDocumentSnapshot> docs, String field) {
    final Map<int, int> countMap = {};

    for (var doc in docs) {
      final dynamic value = doc[field];
      if (value == null) continue;

      final int? intValue =
          value is int ? value : int.tryParse(value.toString());
      if (intValue != null) {
        countMap[intValue] = (countMap[intValue] ?? 0) + 1;
      }
    }
    return countMap;
  }

  Map<int, int> _countAirports(List<QueryDocumentSnapshot> docs) {
    final Map<int, int> countMap = {};

    void add(dynamic value) {
      if (value == null) return;
      final int? intValue =
          value is int ? value : int.tryParse(value.toString());
      if (intValue != null) {
        countMap[intValue] = (countMap[intValue] ?? 0) + 1;
      }
    }

    for (var doc in docs) {
      add(doc['departure']);
      add(doc['arrival']);
    }
    return countMap;
  }

  int? _yearFromFilter(YearFilter filter) {
    switch (filter) {
      case YearFilter.y2023:
        return 2023;
      case YearFilter.y2024:
        return 2024;
      case YearFilter.y2025:
        return 2025;
      case YearFilter.all:
        return null;
    }
  }

  List<QueryDocumentSnapshot> _filterByYear(
    List<QueryDocumentSnapshot> docs,
    YearFilter filter,
  ) {
    final targetYear = _yearFromFilter(filter);
    if (targetYear == null) return docs;

    return docs.where((doc) {
      final timeString = doc['time'];
      if (timeString == null) return false;

      final date = DateTime.tryParse(timeString);
      return date != null && date.year == targetYear;
    }).toList();
  }

  Widget _buildYearSelector() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SegmentedButton<YearFilter>(
        segments: const [
          ButtonSegment(value: YearFilter.all, label: Text('全期間')),
          ButtonSegment(value: YearFilter.y2023, label: Text('2023')),
          ButtonSegment(value: YearFilter.y2024, label: Text('2024')),
          ButtonSegment(value: YearFilter.y2025, label: Text('2025')),
        ],
        selected: {_selectedYear},
        onSelectionChanged: (value) {
          setState(() {
            _selectedYear = value.first;
          });
        },
      ),
    );
  }

  Widget _buildRanking(
    String title,
    Map<int, int> countMap,
    String Function(int) getName,
    Color color,
  ) {
    if (countMap.isEmpty) return const SizedBox();

    final maxCount = countMap.values.reduce((a, b) => a > b ? a : b);
    final sortedList = countMap.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        ...sortedList.map((e) {
          final widthFactor = e.value / maxCount;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                SizedBox(
                  width: 120,
                  child: Text(
                    getName(e.key),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final targetWidth =
                          constraints.maxWidth * widthFactor;
                      const minBarWidth = 20.0;
                      final finalWidth =
                          targetWidth < minBarWidth ? minBarWidth : targetWidth;

                      return Stack(
                        children: [
                          Container(
                            height: 24,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          TweenAnimationBuilder<double>(
                            tween: Tween<double>(begin: 0, end: finalWidth),
                            duration: const Duration(milliseconds: 500),
                            builder: (context, value, child) {
                              return Container(
                                width: value,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              );
                            },
                          ),
                          Positioned.fill(
                            child: Center(
                              child: Text(
                                '${e.value}回',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }),
        const SizedBox(height: 24),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('flights')
          .orderBy('time', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final allDocs = snapshot.data!.docs;
        final filteredDocs = _filterByYear(allDocs, _selectedYear);

        final airportCount = _countAirports(filteredDocs);
        final airlineCount = _countByField(filteredDocs, 'airline');
        final boardingCount = _countByField(filteredDocs, 'boardingType');

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildYearSelector(),

              _buildRanking(
                '訪問空港別ランキング',
                airportCount,
                getAirportName,
                Colors.blue,
              ),
              _buildRanking(
                '航空会社別ランキング',
                airlineCount,
                getAirlineName,
                Colors.green,
              ),
              _buildRanking(
                '搭乗機材別ランキング',
                boardingCount,
                getBoardingTypeName,
                Colors.orange,
              ),
            ],
          ),
        );
      },
    );
  }
}
