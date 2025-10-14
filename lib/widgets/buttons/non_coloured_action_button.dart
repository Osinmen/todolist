import 'package:flutter/material.dart';
import 'package:todolist/themes/colors.dart';

class NonColouredActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? buttonTitle;
  const NonColouredActionButton({super.key, required this.onPressed, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        )
      ),
      child: Text(
        buttonTitle.toString(),
        style: TextStyle(
          fontSize: 14,
          color: AppColors.secondaryButtonColor,
          fontWeight: FontWeight.bold,
          
        ),
      ),
    );
  }
}