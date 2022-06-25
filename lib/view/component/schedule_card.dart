import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:stv_calender2/repository/schedule_db.dart';


class ScheduleCard extends StatelessWidget {
  ScheduleCard({Key? key, this.snapshot,this.index,}) : super(key: key);


  AsyncSnapshot<List<TodoItemData>>? snapshot;
  int? index;


  @override
  Widget build(BuildContext context) {
    TodoItemData todo=snapshot!.data![index!];
    return Column(
      children: [
        const Divider(color: Colors.black,),
        TextButton(
          onPressed: (){
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => rEditSchedulePage(todo:todo),
            //   ),
            // );
          },
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black)
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spac,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Text(DateFormat("HH:mm").format(todo.startDay!)),
                  Text(DateFormat("HH:mm").format(todo.endDay!)),
                ],
              ),
              // const VerticalDivider(color: Colors.red,thickness: 10,width: 10,),
              Container(
                margin: const EdgeInsets.only(left: 5,right: 5),
                width: 5,
                height: 40,
                decoration: const BoxDecoration(color: Colors.blue),),
              Expanded(
                child: Text(
                  todo.title,
                  overflow: TextOverflow.ellipsis,

                ),
              ),
              // Text(todo.content),
            ],
          ),
        ),
      ],
    );
  }

  }

