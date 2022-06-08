import "package:freezed_annotation/freezed_annotation.dart";


part 'calender_model.freezed.dart';
@freezed
abstract class CalenderData with _$CalenderData {
  factory CalenderData({
    @Default(null) DateTime? focusedDay,
    @Default(null) DateTime? selectedDay,

  }) = _CalenderData;
}
