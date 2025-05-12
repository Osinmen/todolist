import 'package:flutter/material.dart';
import 'package:todolist/constants/theme.dart';

class Nextbutton extends StatelessWidget {
  String text;

  Nextbutton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: appTheme.colorScheme.primary),
      child: Text(text),
    );
  }
}
