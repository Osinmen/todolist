import 'package:flutter/material.dart';
import 'package:todolist/themes/colors.dart';

class Remainingtaskbutton extends StatelessWidget {
  final String? text;
  const Remainingtaskbutton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(vertical: 17 ,  horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.textPrimary, 
        borderRadius: BorderRadius.circular(10), 
      ),
      child: Text(text.toString(), style: TextStyle(color: Colors.white),),
    );
  }
}