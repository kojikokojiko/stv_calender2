
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/schedule_model.dart';



final counterProvider = StateNotifierProvider<ScheduleController, ScheduleModel>((ref) {
  return ScheduleController();
});



class ScheduleController extends StateNotifier<ScheduleModel>{
  ScheduleController():super(const ScheduleModel());

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