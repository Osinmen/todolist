import 'package:flutter/material.dart';
import 'package:todolist/themes/colors.dart';

class IconCategoryButton extends StatelessWidget {
  const IconCategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          
          color: AppColors.textPrimary, 
          borderRadius: BorderRadius.circular(7)
        ),
        child: Text("Choose icon from library", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}