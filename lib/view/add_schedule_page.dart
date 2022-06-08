import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AddSchedulePage extends HookConsumerWidget {
  // const AddSchedulePage({Key? key}) : super(key: key);

  AddSchedulePage({Key? key, this.selectedDay}) : super(key: key);
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _startDay = useState(selectedDay!);
    final _endDay = useState(selectedDay!);
    final _isAllDay = useState(false);
    return Scaffold(
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
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                // autovalidateMode:AutovalidateMode.always ,
                // initialValue: (isEditing!)? todo!.title:"",
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  hintText: "タイトル",
                ),
                onChanged: (value) {},
                onSaved: (value) {},
              ),
              Container(
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
                            value: _isAllDay.value,
                            onChanged: (e) {
                              _isAllDay.value = e;
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
                                  DateTime tempDay=_startDay.value;
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
                                                _startDay.value=tempDay;
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
                                                initialDateTime: _startDay
                                                    .value,
                                                onDateTimeChanged: (
                                                    value) {
                                                  tempDay = value;
                                                  // ref.read(scheduleEndTimeProvider.state).update((state) => value);
                                                },

                                                mode: _isAllDay.value
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
                              _isAllDay.value ? DateFormat("yyyy-MM-dd").format(
                                  _startDay.value) : DateFormat(
                                  "yyyy-MM-dd HH:mm").format(_startDay.value),
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
                                  DateTime tempDay=_endDay.value;
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
                                                _endDay.value=tempDay;
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
                                                initialDateTime: _endDay
                                                    .value,
                                                onDateTimeChanged: (
                                                    value) {
                                                  tempDay = value;
                                                  // ref.read(scheduleEndTimeProvider.state).update((state) => value);
                                                },

                                                mode: _isAllDay.value
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
                              _isAllDay.value ? DateFormat("yyyy-MM-dd").format(
                                  _endDay.value) : DateFormat(
                                  "yyyy-MM-dd HH:mm").format(_endDay.value),
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
