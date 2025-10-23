import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/custom_classes/category_class/category_class.dart';
import 'package:todolist/pages/add_category_screen.dart';
import 'package:todolist/providers/date_provder.dart';
import 'package:todolist/themes/colors.dart';

class DatePicker {
  static Future<void> pickDate(BuildContext context) async {
    final dateProvider = Provider.of<DateProvider>(context, listen: false);

    // Show date picker dialog
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            dialogBackgroundColor: AppColors.textPrimary,
            colorScheme: ColorScheme.dark(
              primary: AppColors.secondaryButtonColor,
              onPrimary: Colors.black,
              surface: AppColors.textPrimary,
              onSurface: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );
if(!context.mounted) return;
    if (pickedDate != null) {
      dateProvider.setSelectedDate(pickedDate);
     CategoryClass.opencatergoryClass(context);
      print("Picked date: ${pickedDate.toIso8601String()}");
    } else {
      print("User cancelled date selection");
    }
  }
}