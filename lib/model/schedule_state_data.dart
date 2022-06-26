

import 'package:freezed_annotation/freezed_annotation.dart';

import '../repository/schedule_db.dart';
part 'schedule_state_data.freezed.dart';

@freezed
abstract class TodoStateData with _$TodoStateData {
  factory TodoStateData({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    @Default([]) List<TodoItemData> todoItems,
  }) = _TodoStateData;
}
