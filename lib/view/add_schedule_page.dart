
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stv_calender2/view/schedule_db_controller.dart';
import 'package:stv_calender2/view/temp_schedule_vm.dart';

import 'component/comment_form_widget.dart';
import 'component/date_info_widget.dart';
import 'component/title_form_widget.dart';

class AddSchedulePage extends HookConsumerWidget {
  // const AddSchedulePage({Key? key}) : super(key: key);

  AddSchedulePage({Key? key, this.selectedDay}) : super(key: key);
  DateTime? selectedDay;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tempTodoState = ref.watch(tempTodoProvider);
    final tempTodoController = ref.read(tempTodoProvider.notifier);
    final todoDataBaseController = ref.read(todoDatabaseProvider.notifier);

    bool canSend = tempTodoState.title == "";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("予定の追加"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        //これを追加
        // automaticallyImplyLeading: false,
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.all(10),
            width: 70,
            height: 20,
            child: ElevatedButton(
              onPressed: () async {
                if (canSend = true) {
                  todoDataBaseController.writeData(tempTodoState);
                  Navigator.pop(context);
                }
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              child: Text(
                "保存",
                style: TextStyle(
                  color: (canSend) ? Colors.grey : Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[300]),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TitleFormWidget(
                state: tempTodoState,
                controller: tempTodoController,
              ),
              DateInfoWidget(
                state: tempTodoState,
                controller: tempTodoController,
              ),
              CommentFromWidget(
                state: tempTodoState,
                controller: tempTodoController,
              ),
              // ListView(children: tiles,)
            ],
          ),
        ),
      ),
    );
  }
}
