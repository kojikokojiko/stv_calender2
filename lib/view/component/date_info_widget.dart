import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../model/temp_schedule_model.dart';
import '../temp_schedule_vm.dart';

class DateInfoWidget extends ConsumerWidget {
  const DateInfoWidget({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final tempTodoController = ref.read(tempTodoProvider.notifier);
    final tempTodoState = ref.watch(tempTodoProvider);
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      width: double.infinity,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 5.0, bottom: 0, left: 10.0, right: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text("終日"),
                Switch(
                  // value: isAllDay.value,
                  value:tempTodoState.isAllDay,
                  onChanged: (e) {
                    // isAllDay.value = e;
                    tempTodoController.updateIsAllDay(e);
                  },
                ),
              ],
            ),
          ),
          const Divider(color: Colors.black),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text("開始"),
                TextButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext context) {
                        // DateTime tempDay=startDay.value;
                        DateTime tempDay=tempTodoState.startDay!;
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xff999999),
                                      width: 0.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  CupertinoButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    padding:
                                    const EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                        vertical: 5.0),
                                    child: const Text("キャンセル"),
                                  ),
                                  CupertinoButton(
                                    onPressed: () {
                                      // 変更
                                      // startDay.value=tempDay;
                                      tempTodoController.updateStartDate(tempDay);

                                      if(tempTodoState.isAllDay){
                                        if(tempDay.isAfter(tempTodoState.endDay!)){
                                          // 開始時間が終了時間を越してるので、終了時間を+1日スル。
                                          tempTodoController.updateEndDate(tempDay.add(const Duration(days: 1)));
                                        }
                                      }else{
                                        if(tempDay.isAfter(tempTodoState.endDay!)){
                                          // 開始時間が終了時間を越してるので、終了時間を+1日スル。
                                          tempTodoController.updateEndDate(tempDay.add(const Duration(hours: 1)));
                                        }
                                      }

                                      Navigator.of(context).pop();
                                    },
                                    padding:
                                    const EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                        vertical: 5.0),
                                    child: const Text("追加"),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height:
                              MediaQuery
                                  .of(context)
                                  .size
                                  .height /
                                  3,
                              padding:
                              const EdgeInsets.only(top: 6.0),
                              color: CupertinoColors.white,
                              child: DefaultTextStyle(
                                style: const TextStyle(
                                    color: CupertinoColors
                                        .black,
                                    fontSize: 22.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: SafeArea(
                                    top: false,
                                    child: CupertinoDatePicker(
                                      use24hFormat: true,
                                      minuteInterval: 15,
                                      initialDateTime: tempTodoState.startDay!,
                                      onDateTimeChanged: (
                                          value) {
                                        tempDay = value;
                                        // ref.read(scheduleEndTimeProvider.state).update((state) => value);
                                      },

                                      mode: tempTodoState.isAllDay
                                          ? CupertinoDatePickerMode
                                          .date
                                          : CupertinoDatePickerMode
                                          .dateAndTime,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },

                  child: Text(
                    tempTodoState.isAllDay ? DateFormat("yyyy-MM-dd").format(
                        tempTodoState.startDay!) : DateFormat(
                        "yyyy-MM-dd HH:mm").format(tempTodoState.startDay!),
                    style: const TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          const Divider(color: Colors.black),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 5.0, left: 10.0, right: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text("終了"),
                TextButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext context) {
                        DateTime tempDay=tempTodoState.endDay!;
                        // _endDay
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xff999999),
                                      width: 0.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  CupertinoButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    padding:
                                    const EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                        vertical: 5.0),
                                    child: const Text("キャンセル"),
                                  ),
                                  CupertinoButton(
                                    onPressed: () {
                                      // 変更
                                      // endDay.value=tempDay;
                                      tempTodoController.updateEndDate(tempDay);


                                      if(tempTodoState.isAllDay){
                                        if(tempDay.isBefore(tempTodoState.startDay!)){
                                          // 開始時間が終了時間を越してるので、終了時間を+1日スル。
                                          tempTodoController.updateStartDate(tempDay.add(const Duration(days: -1)));
                                        }
                                      }else{
                                        if(tempDay.isBefore(tempTodoState.startDay!)){
                                          // 開始時間が終了時間を越してるので、終了時間を+1日スル。
                                          tempTodoController.updateStartDate(tempDay.add(const Duration(hours: -1)));
                                        }
                                      }





                                      Navigator.of(context).pop();
                                    },
                                    padding:
                                    const EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                        vertical: 5.0),
                                    child: const Text("追加"),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height:
                              MediaQuery
                                  .of(context)
                                  .size
                                  .height /
                                  3,
                              padding:
                              const EdgeInsets.only(top: 6.0),
                              color: CupertinoColors.white,
                              child: DefaultTextStyle(
                                style: const TextStyle(
                                    color: CupertinoColors
                                        .black,
                                    fontSize: 22.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: SafeArea(
                                    top: false,
                                    child: CupertinoDatePicker(
                                      use24hFormat: true,
                                      minuteInterval: 15,
                                      initialDateTime: tempTodoState.endDay!,
                                      onDateTimeChanged: (
                                          value) {
                                        tempDay = value;
                                        // ref.read(scheduleEndTimeProvider.state).update((state) => value);
                                      },

                                      mode: tempTodoState.isAllDay
                                          ? CupertinoDatePickerMode
                                          .date
                                          : CupertinoDatePickerMode
                                          .dateAndTime,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    tempTodoState.isAllDay ? DateFormat("yyyy-MM-dd").format(
                        tempTodoState.endDay!) : DateFormat(
                        "yyyy-MM-dd HH:mm").format(tempTodoState.endDay!),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}