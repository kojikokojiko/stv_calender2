import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stv_calender2/model/schedule_model.dart';
import 'package:stv_calender2/view/schedule_vm.dart';

import 'component/comment_form_widget.dart';
import 'component/date_info_widget.dart';
import 'component/title_form_widget.dart';

class AddSchedulePage extends HookConsumerWidget {
  // const AddSchedulePage({Key? key}) : super(key: key);

  AddSchedulePage({Key? key, this.selectedDay}) : super(key: key);
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state=ref.watch(scheduleProvider);
    final controller = ref.read(scheduleProvider.notifier);

    // final startDay = useState(selectedDay!);
    // final endDay = useState(selectedDay!);
    // final isAllDay = useState(false);
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
              onPressed: () async {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              child: const Text(
                "保存",
                style: TextStyle(
                  color: Colors.black,
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
              TitleFormWidget(state: state,controller: controller,),
              DateInfoWidget(state: state, controller: controller,),
              CommentFromWidget(state: state,controller: controller,)
            ],
          ),
        ),
      ),
    );
  }
}
