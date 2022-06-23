import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:table_calendar/table_calendar.dart';

import 'modal_slider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CalenderScreen extends HookConsumerWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  Color _textColor(DateTime day) {
    const defaultTextColor = Colors.black87;

    if (day.weekday == DateTime.sunday) {
      return Colors.red;
    }
    if (day.weekday == DateTime.saturday) {
      return Colors.blue[600]!;
    }
    return defaultTextColor;
  }


  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final _focusedDay = useState(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("カレンダー"),
      ),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: _focusedDay.value,
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            daysOfWeekStyle: const DaysOfWeekStyle(
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
            ),
            daysOfWeekHeight: 25,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              formatButtonShowsNext: false,
              leftChevronVisible: false,
              rightChevronVisible: false,
            ),
            calendarFormat: CalendarFormat.month,
            calendarStyle: const CalendarStyle(
                disabledTextStyle: TextStyle(color: Color(0xFFDCDCDC))),
            startingDayOfWeek: StartingDayOfWeek.monday,
            onDaySelected: (selectedDay, focusedDay) {
              _focusedDay.value=focusedDay;



              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return ModalSlider(
                    day: _focusedDay.value,
                  );
                },
              );
            },
            onPageChanged: (focusedDay) {
              _focusedDay.value = focusedDay;
            },
            calendarBuilders: CalendarBuilders(
              headerTitleBuilder: (BuildContext context, DateTime day) {
                return Row(
                  children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        side: const BorderSide(color: Colors.black12),
                      ),
                      onPressed: () {
                        _focusedDay.value=DateTime.now();


                      },
                      child: const Text(
                        "今日",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 60),
                    Text(
                      "${day.year}年${day.month}月",
                      style: const TextStyle(fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () async{
                        var selctedDate=await showMonthPicker(context: context, initialDate: day,firstDate:DateTime(DateTime.now().year - 1) ,lastDate: DateTime(DateTime.now().year +1));
                        if (selctedDate == null) return;
                        _focusedDay.value=selctedDate;


                      },
                      child: const Icon(Icons.arrow_drop_down_sharp),
                    )
                    // Text()
                  ],
                );
              },
              defaultBuilder:
                  (BuildContext context, DateTime day, DateTime focusedDay) {
                return Container(
                  alignment: Alignment.center,
                  child: Text(
                    day.day.toString(),
                    style: TextStyle(
                      color: _textColor(day),
                    ),
                  ),
                );
              },
              dowBuilder: (context, day) {
                final text = DateFormat.E("ja").format(day);

                return Center(
                  child: Text(
                    text,
                    style: TextStyle(color: _textColor(day)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
