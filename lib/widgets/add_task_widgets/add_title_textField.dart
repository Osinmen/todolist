import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/providers/task_provider.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';

class AddTitleTextfield extends StatefulWidget {
  final TextEditingController titleController;
  final ValueChanged onChanged;
  const AddTitleTextfield({super.key, required this.titleController, required this.onChanged});

  @override
  State<AddTitleTextfield> createState() => _AddTitleTextfieldState();
}

class _AddTitleTextfieldState extends State<AddTitleTextfield> {
  


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.titleController.dispose();
  }

  @override
  Widget build(BuildContext context) {

   var selected_task = context.read<TaskProvider>().selectedTask;

if (selected_task != null && selected_task.title != widget.titleController.text.trim()) {
  selected_task.title = widget.titleController.text.trim();
}

    return TextField(
      onChanged: widget.onChanged,
      style: TextStyle(color: Colors.white, fontSize: 15),
      controller: widget.titleController,
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
