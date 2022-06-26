import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:stv_calender2/repository/schedule_db.dart';
import 'package:stv_calender2/view/schedule_db_controller.dart';
import 'package:stv_calender2/view/temp_schedule_vm.dart';

import 'add_schedule_page.dart';
import 'component/schedule_card.dart';

class ModalSlider extends HookConsumerWidget {
  ModalSlider({Key? key, required this.day}) : super(key: key);

  final DateTime day;
  final diffDay = 8;

  final List<DateTime> dayList = [];

  void setDayList(diffDay, day) {
    dayList.clear();
    for (int i = diffDay; i > 0; i--) {
      var insertDay = day!.add(Duration(days: i) * -1);
      dayList.add(insertDay);
    }
    dayList.add(day!);
    for (int i = 1; i < diffDay + 1; i++) {
      var insertDay = day!.add(Duration(days: i));
      dayList.add(insertDay);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tempTodoController = ref.read(tempTodoProvider.notifier);
    final todoDataBaseController = ref.read(todoDatabaseProvider.notifier);
    setDayList(diffDay, day);
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 2.0,
        height: 550,
        viewportFraction: 0.8,
        initialPage: diffDay,
        enableInfiniteScroll: false,
      ),
      items: dayList.map((selectingDay) {
        // print(selectingDay);
        return Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),

              margin: const EdgeInsets.only(bottom: 40, left: 10, right: 10),
              // color: Colors.white,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Text(day.toString()),
                        Text(
                            DateFormat("yyyy/MM/dd (E)", 'ja')
                                .format(selectingDay),
                            style: const TextStyle(fontSize: 20)),
                        TextButton(
                            child: const Icon(Icons.add),
                            onPressed: () {
                              // tempTodoController.updateStartDate(selectingDay);
                              // tempTodoController.updateEndDate(selectingDay);
                              //

                              tempTodoController.updateAll(
                                  "", false, selectingDay, selectingDay, "");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AddSchedulePage(isEditing: false,),
                                ),
                              );
                            }),
                      ],
                    ),
                    Expanded(
                      child: StreamBuilder(
                        stream: todoDataBaseController
                            .readSameDayData(selectingDay),
                        builder: (BuildContext context,
                            AsyncSnapshot<List<TodoItemData>> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                          return (snapshot.data!.isEmpty)
                              ? const Center(child: Text("予定がありません"))
                              : ListView.builder(
                                  //11
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) => ScheduleCard(
                                    snapshot: snapshot,
                                    index: index,
                                  ),
                                );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
