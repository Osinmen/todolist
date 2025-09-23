import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';

class OnboardingWidget1 extends StatelessWidget {

  final String largeText;
  final String smallText;
  final String imagePath;

  const OnboardingWidget1({super.key, required this.largeText, required this.smallText, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: Column(

        children: [
         Container(
          height: 300, 
          width: 250,
          child: Image.asset(imagePath, height: 300, width: 200 ,)) ,
          60.height, 
          Text(largeText, style: AppTextStyles.heading1,),
          20.height,
          Text(smallText, style: AppTextStyles.heading2, textAlign: TextAlign.center,)
        ],  
      ),
    );
  }
}