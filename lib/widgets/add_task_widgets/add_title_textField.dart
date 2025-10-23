import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/providers/task_provider.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';

class AddTitleTextfield extends StatefulWidget {
  AddTitleTextfield({super.key});

  @override
  State<AddTitleTextfield> createState() => _AddTitleTextfieldState();
}

class _AddTitleTextfieldState extends State<AddTitleTextfield> {
  TextEditingController titleController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    titleController.dispose();
  }

  @override
  Widget build(BuildContext context) {

      var selected_task = context.read<TaskProvider>().selectedTask!;

      if(selected_task != null && selected_task.title != titleController)  {
        selected_task.title = titleController.text.trim();
      }


    return TextField(
      style: TextStyle(color: Colors.white, fontSize: 15),
      controller: titleController,
      onChanged: (value) {
        selected_task.title = value;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        hintText: "Add Task Here",
        hintStyle: AppTextStyles.heading2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1.0, color: AppColors.white),
        ),
      ),
    );
  }
}
