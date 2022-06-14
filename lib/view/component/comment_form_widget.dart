
import 'package:flutter/material.dart';

import '../../model/schedule_model.dart';
import '../schedule_vm.dart';

class CommentFromWidget extends StatelessWidget {
  const CommentFromWidget({
    Key? key,
    required this.state,
    required this.controller,
  }) : super(key: key);


  final ScheduleModel state;
  final ScheduleController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(state.comment!),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)),
          width: double.infinity,
          height: 200,
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            autovalidateMode:AutovalidateMode.always ,
            initialValue:"",
            // (isEditing!)? todo!.content:"",
            onChanged: (value){
              controller.updateComment(value);
            },
            onSaved: (value){
              controller.updateComment(value!);
              // ref.read(contentProvider.state).update((state) => value!);
            },
            // デフォルトで表示される青い下線を削除
            decoration: const InputDecoration(
              hintText: "コメントを入力してください",
              border: InputBorder.none,
            ),
            // 改行して複数行入力が可能なように、キーボードに改行ボタンを表示
            keyboardType: TextInputType.multiline,
            // 改行できる行数を無制限に設定
            maxLines: null,
          ),
        ),
      ],
    );
  }
}
