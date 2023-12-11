import 'package:intl/intl.dart';

extension DateTimeStringExtension on DateTime {
  String toIso8601StringWithTimeZoneOffset() {
    if (isUtc) return toIso8601String();

    final offset = timeZoneOffset;
    final offsetSign = offset.isNegative ? '-' : '+';
    final offsetHours = offset.inHours.abs().toString().padLeft(2, '0');
    final offsetMinutes =
        (offset.inMinutes.abs() % 60).toString().padLeft(2, '0');
    final offsetFormat = '$offsetSign$offsetHours:$offsetMinutes';

    return '${toIso8601String()}$offsetFormat';
  }
}

DateTime getFormatDateTime(String d) {
  return DateFormat('yyyy-MM-ddTHH:mm:ss.000+09:00', 'ja_JP').parse(d);
}