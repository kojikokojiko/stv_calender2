
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/temp_schedule_model.dart';



final scheduleProvider = StateNotifierProvider<ScheduleController, TempTodoItemData>((ref) {
  return ScheduleController();
});



class ScheduleController extends StateNotifier<TempTodoItemData>{
  ScheduleController():super( TempTodoItemData(startDay: DateTime.now(),endDay: DateTime.now(),title: "",comment: "",isAllDay: false),);

  void updateTitle(String title){
    state=state.copyWith(title:title);
  }
  void updateIsAllDay(bool isAllDay){
    state=state.copyWith(isAllDay:isAllDay);
  }
  void updateStartDate(DateTime startDay){
    state=state.copyWith(startDay:startDay);
  }
  void updateEndDate(DateTime endDay){
    state=state.copyWith(endDay:endDay);
  }

  void updateComment(String comment){
    state=state.copyWith(comment:comment);
  }
}