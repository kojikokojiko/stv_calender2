import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:stv_calender2/model/schedule_state_data.dart';

import '../model/temp_schedule_model.dart';
import '../repository/schedule_db.dart';

class TodoDatabaseNotifier extends StateNotifier<TodoStateData> {
  TodoDatabaseNotifier() : super(TodoStateData());

  final _db = MyDatabase(); //DBへの操作を行う



  // 書き込み処理
  void writeData(TempTodoItemData data) async {
    if (data.title!.isEmpty) {
      return;
    }
    TodoItemCompanion entry = TodoItemCompanion(
      title: Value(data.title),
      comment: Value(data.comment),
      startDay: Value(data.startDay),
      endDay: Value(data.endDay),
      isAllday: Value(data.isAllDay),
    );
    state = state.copyWith(isLoading: true);
    await _db.writeTodo(entry); //テーブルに入力されたデータを送る
    readData();
  }

  void deleteData(TodoItemData data)async{
    state = state.copyWith(isLoading: true);
    await _db.deleteTodo(data.id);
    readData();
  }


  //更新処理部分
  void updateData(TodoItemData data) async {
    if (data.title.isEmpty) {
      return;
    }
    state = state.copyWith(isLoading: true);
    await _db.updateTodo(data);
    readData();
    //更新するたびにデータベースを読み込む
  }

  //データ読み込み処理
  readData() async {
    state = state.copyWith(isLoading: true);

    final todoItems = await _db.readAllTodoData();

    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      todoItems: todoItems,
    );
  }

}


