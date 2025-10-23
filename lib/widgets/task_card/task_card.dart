import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/themes/colors.dart';

class TaskCard extends StatelessWidget {
  final String? taskTitle;
  final String? taskCategory;
  final String? taskDescription;

  const TaskCard({
    super.key,
    required this.taskCategory,
   
    required this.taskTitle,
    required this.taskDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.textPrimary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          
          decoration: BoxDecoration(
            color: AppColors.textPrimary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: BoxBorder.all(color: Colors.white, width: 1),
                ),
              ),
              12.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$taskTitle",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "$taskDescription",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  10.height,
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 70,
                        decoration: BoxDecoration(
                          border: BoxBorder.all(color: Colors.blue, width: 1.0),
                        ),
                      ),
                      12.width,
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              border: BoxBorder.all(
                                color: Colors.blue,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      12.width,
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              border: BoxBorder.all(
                                color: Colors.blue,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
