import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';

class TaskCard extends StatelessWidget {
  String? title;
  String description;
  TaskCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.textPrimary,
      ),
      child: Center(
        child: Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.amber,
            ),
            20.width,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title.toString(), style: AppTextStyles.heading1),
                Row(
                  children: [
                    Container(height: 20, width: 70, color: Colors.red),
                    10.width,
                    Container(height: 20, width: 20, color: Colors.yellow),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
