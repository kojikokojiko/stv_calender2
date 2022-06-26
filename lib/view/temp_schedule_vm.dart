import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/temp_schedule_model.dart';

final tempTodoProvider =
    StateNotifierProvider<TempTodoController, TempTodoItemData>((ref) {
  return TempTodoController();
});

class TempTodoController extends StateNotifier<TempTodoItemData> {
  TempTodoController()
      : super(
          TempTodoItemData(
              startDay: DateTime.now(),
              endDay: DateTime.now(),
              title: "",
              comment: "",
              isAllDay: false),
        );

  void updateAll(String title, bool isAllDay, DateTime startDay,
      DateTime endDay, String comment) {
    state = state.copyWith(
        title: title,
        isAllDay: isAllDay,
        startDay: startDay,
        endDay: endDay,
        comment: comment);
  }

  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  void updateIsAllDay(bool isAllDay) {
    state = state.copyWith(isAllDay: isAllDay);
  }

  void updateStartDate(DateTime startDay) {
    state = state.copyWith(startDay: startDay);
  }

  void updateEndDate(DateTime endDay) {
    state = state.copyWith(endDay: endDay);
  }

  void updateComment(String comment) {
    state = state.copyWith(comment: comment);
  }
}
