import 'package:flutter/material.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';

class NextButton extends StatelessWidget {
  final String text;
  const NextButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color:AppColors.secondaryButtonColor, 
        borderRadius: BorderRadius.circular(8)
      ),
      child: Text(text, style: AppTextStyles.heading2),
    );
  }
}