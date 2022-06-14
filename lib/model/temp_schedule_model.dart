import 'package:freezed_annotation/freezed_annotation.dart';
part 'temp_schedule_model.freezed.dart';




@freezed
class TempTodoItemData with _$TempTodoItemData {
  const factory TempTodoItemData({
    @Default(null) String? title,
    @Default(null)bool? isAllDay ,
    @Default(null) DateTime? startDay,
    @Default(null) DateTime? endDay,
    @Default(null) String? comment,
  }) = _TempTodoItemData;
}