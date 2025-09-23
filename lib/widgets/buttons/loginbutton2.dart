import 'package:flutter/material.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';

class Loginbutton2 extends StatelessWidget {
  final String? centerText;
  final Color? color;
  TextStyle textStyle;
  VoidCallback? buttonAction;
  Loginbutton2({
    super.key,
    required this.textStyle,
    required this.centerText,
    required this.color,
    required this.buttonAction,
    
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonAction,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(centerText.toString(), style: textStyle),
        ),
      ),
    );
  }
}
