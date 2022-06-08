

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stv_calender2/model/calender_model.dart';



final todoDatabaseProvider = StateNotifierProvider((_) {
  return CalenderDataNotifier();
});

class CalenderDataNotifier extends StateNotifier<CalenderData>{

  CalenderDataNotifier():super(CalenderData(selectedDay:DateTime.now() ,focusedDay:DateTime.now() ));


  changeFocusedDay(DateTime focusedDay){
    state = state.copyWith(focusedDay: focusedDay);
  }

  changeSelecteddDay(DateTime selectedDay){
    state = state.copyWith(selectedDay: selectedDay);
  }

}