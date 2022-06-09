import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule_model.freezed.dart';

@freezed
class ScheduleModel with _$ScheduleModel {
  const factory ScheduleModel({
    /// 友人の名前
    @Default(null) String? title,
    @Default(null)bool? isAllDay ,
    @Default(null) DateTime? startDay,
    @Default(null) DateTime? endDay,
    @Default(null) String? comment,
    //requiredで必須項目にする
  }) = _ScheduleModel;
}