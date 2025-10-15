import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/providers/date_provder.dart';
import 'package:todolist/themes/colors.dart';

class DatePicker {
  static Future<void> pickDate(BuildContext context) async {
    final dateProvider = Provider.of<DateProvider>(context);
    final pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2025),
      lastDate: DateTime(2100),
      currentDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            dialogBackgroundColor: AppColors.textPrimary

          ),
        child: Container(
          color: Colors.yellow,
          height: 50,
          width: 50,
        ),
        );
      }
    );

    if(pickedDate != null) {
      dateProvider.setSelectedDate(pickedDate);
    }
  }
}
