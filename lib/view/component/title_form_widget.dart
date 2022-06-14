
import 'package:flutter/material.dart';

import '../../model/schedule_model.dart';
import '../schedule_vm.dart';

class TitleFormWidget extends StatelessWidget {
  const TitleFormWidget({
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
        Text(state.title!),
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
          onChanged: (value) {
            controller.updateTitle(value);
          },
          onSaved: (value) {
            controller.updateTitle(value!);
          },
        ),
      ],
    );
  }
}
