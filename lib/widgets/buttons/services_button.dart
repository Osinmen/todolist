import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';

class ServicesButton extends StatelessWidget {
  final String? imagePath;
  final String? centerText;
  const ServicesButton({super.key, required this.centerText, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.secondaryButtonColor, 
          width: 1.0, 
          
        ), 
        borderRadius: BorderRadius.circular(8), 
        color: Colors.black
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath.toString()),
          10.width,
          Text(centerText.toString(), style: AppTextStyles.heading2,),
        ],
      ),
    );
  }
}