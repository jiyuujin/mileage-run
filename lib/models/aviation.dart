import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/aviation.freezed.dart';
part 'generated/aviation.g.dart';

@freezed
class Aviation with _$Aviation {
  const factory Aviation({
    required int value,
    required String text,
  }) = _Aviation;

  factory Aviation.fromJson(Map<String, dynamic> json)
    => _$AviationFromJson(json);
}