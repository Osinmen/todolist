import 'package:flutter/material.dart';
import 'package:todolist/constants/theme.dart';

class CustomLoginButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  bool isEnabled;
  CustomLoginButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onPressed : null,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: isEnabled
                ? appTheme.colorScheme.primary
                : appTheme.colorScheme.primary.withOpacity(0.6)),
        child: Text("jyst checking"),
      ),
    );
  }
}
