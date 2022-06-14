import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:stv_calender2/view/temp_schedule_vm.dart';

import 'add_schedule_page.dart';




class ModalSlider extends HookConsumerWidget {
  ModalSlider({required this.day});

  final DateTime day;
  final diffDay = 3;

  List<DateTime> dayList = [];

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
  Widget build(BuildContext context,WidgetRef ref) {
    final controller=ref.read(tempTodoProvider.notifier);

    setDayList(diffDay, day);
    print(dayList);
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
                              controller.updateStartDate(selectingDay);
                              controller.updateEndDate(selectingDay);

                              print(selectingDay);
                              // print(ref.watch(startTimeProvider));
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddSchedulePage(
                                    selectedDay: selectingDay,
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                    // Expanded(
                      //10
                      //以下、Container()をStreamBuilder(...)に置き換え
                      // child: // StreamBuilder(
                      // //   stream: database.watchSamedayEntries(selecting_day),
                      // //   builder: (BuildContext context,
                      // //       AsyncSnapshot<List<Todo>> snapshot) {
                      // //     if (snapshot.connectionState ==
                      // //         ConnectionState.waiting) {
                      // //       return const Center(
                      // //           child: CircularProgressIndicator());
                      // //     }
                      // //     return (snapshot.data!.length == 0)
                      // //         ? Center(child: Text("予定がありません"))
                      // //         : ListView.builder(
                      // //             //11
                      // //             itemCount: snapshot.data!.length,
                      // //             itemBuilder: (context, index) => ScheduleCard(
                      // //                   snapshot: snapshot,
                      // //                   index: index,
                      // //                   selecting_day: selecting_day,
                      // //                 ));
                      // //   },
                      // // ),
                    // ),
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
