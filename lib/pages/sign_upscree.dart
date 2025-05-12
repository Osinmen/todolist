import 'package:flutter/material.dart';
import 'package:todolist/constants/theme.dart';

class SignUpscreen extends StatefulWidget {
  const SignUpscreen({super.key});

  @override
  State<SignUpscreen> createState() => _SignUpscreenState();
}

//remember a clean code is a love letter to the next developer
class _SignUpscreenState extends State<SignUpscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.colorScheme.background,
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
