import 'package:flutter/material.dart';
import 'package:todolist/themes/colors.dart';

class ColouredActionButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onPressed;
  const ColouredActionButton({super.key, required this.onPressed, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
       height: 53,
        decoration: BoxDecoration(
          color: AppColors.secondaryButtonColor, 
          borderRadius: BorderRadius.circular(6)
        ),
        child: Center(
          child: Text(
            buttonTitle.toString(),
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              backgroundColor: AppColors.secondaryButtonColor
            ),
          ),
        ),
      ),
    );
  }
}
