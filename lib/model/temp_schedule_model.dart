import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule_model.freezed.dart';

@freezed
class TempScheduleModel with _$TempScheduleModel {
  const factory TempScheduleModel({
    @Default(null) String? title,
    @Default(null)bool? isAllDay ,
    @Default(null) DateTime? startDay,
    @Default(null) DateTime? endDay,
    @Default(null) String? comment,
  }) = _TempScheduleModel;
}