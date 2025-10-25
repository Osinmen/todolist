import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/providers/task_provider.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';

class AddDescriptionTextfield extends StatefulWidget {
    final TextEditingController descriptionController;
    final ValueChanged onChanged;
  const AddDescriptionTextfield({super.key, required this.descriptionController, required this.onChanged, });

  @override
  State<AddDescriptionTextfield> createState() =>
      _AddDescriptionTextfieldState();
}

class _AddDescriptionTextfieldState extends State<AddDescriptionTextfield> {


  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final task_description = context.read<TaskProvider>().selectedTask;
    if (task_description != null &&
        task_description.description != widget.descriptionController) {
      task_description.title = widget.descriptionController.text;
    }
    return TextField(

      controller: widget.descriptionController,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: "Description",
        hintStyle: AppTextStyles.heading2,
        border: UnderlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1.0, color: AppColors.white),
        ),
      ),
    );
  }
}
