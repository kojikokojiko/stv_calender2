import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule_model.freezed.dart';

@freezed
class ScheduleModel with _$ScheduleModel {
  const factory ScheduleModel({
    /// 友人の名前
    required String title,
    required bool isAllDay ,
    required DateTime startDay,
    required DateTime endDay,
    required String comment,
    //requiredで必須項目にする
  }) = _ScheduleModel;
}