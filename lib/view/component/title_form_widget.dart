
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../temp_schedule_vm.dart';

class TitleFormWidget extends ConsumerWidget {
  const TitleFormWidget({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final tempTodoController = ref.read(tempTodoProvider.notifier);
    final tempTodoState = ref.watch(tempTodoProvider);
    return Column(
      children: [
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          // autovalidateMode:AutovalidateMode.always ,
          initialValue: tempTodoState.title,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: InputBorder.none,
            hintText: "タイトル",
          ),
          onChanged: (value) {
            tempTodoController.updateTitle(value);
          },
          onSaved: (value) {
            tempTodoController.updateTitle(value!);
          },
        ),
      ],
    );
  }
}
