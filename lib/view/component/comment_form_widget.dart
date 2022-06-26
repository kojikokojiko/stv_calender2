
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../temp_schedule_vm.dart';

class CommentFromWidget extends ConsumerWidget {
  const CommentFromWidget({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context,WidgetRef ref ) {
    final tempTodoController = ref.read(tempTodoProvider.notifier);
    final tempTodoState = ref.watch(tempTodoProvider);
    return Column(
      children: [

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
            initialValue: tempTodoState.comment,
            // (isEditing!)? todo!.content:"",
            onChanged: (value){
              tempTodoController.updateComment(value);
            },
            onSaved: (value){
              tempTodoController.updateComment(value!);
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
