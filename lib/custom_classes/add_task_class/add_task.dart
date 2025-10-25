import 'package:flutter/material.dart';
import 'package:todolist/custom_classes/date_time_class/date_picker.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/widgets/add_task_widgets/add_description_textfield.dart';
import 'package:todolist/widgets/add_task_widgets/add_title_textField.dart';
import 'package:todolist/widgets/buttons/colour_action_button.dart';
import 'package:todolist/widgets/buttons/non_coloured_action_button.dart';

class AddTask {
  static final titleController = TextEditingController();
  static final descriptionController = TextEditingController();

  //spaced i will use the above as a control
  static Future<void> openScreenDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              backgroundColor: AppColors.textPrimary,
              insetPadding: EdgeInsets.all(20),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Add Task",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        015.height,
                        AddTitleTextfield(
                          titleController: AddTask.titleController,
                          onChanged: (_) => setState(() {}),
                        ),
                        10.height,
                        AddDescriptionTextfield(
                          descriptionController: AddTask.descriptionController,
                          onChanged: (_) => setState(() {}),
                        ),
                        10.height,
                        Row(
                          children: [
                            Expanded(
                              child: NonColouredActionButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                buttonTitle: "Cancel",
                              ),
                            ),
                            10.width,
                            Expanded(
                              child: ColouredActionButton(
                                onPressed: () {
                                  //implement the next phase which would be to select category
                                  DatePicker.pickDate(context);
                                },
                                buttonTitle: "Next",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
