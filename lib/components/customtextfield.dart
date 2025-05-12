import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  bool isPassword = false;
  TextEditingController controller;
  final String textFieldType;
  CustomTextField(
      {super.key,
      required this.hintText,
      required this.isPassword,
      required this.textFieldType,
      required this.controller});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void dispose() {
    // TODO: implement dispose
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.textFieldType,
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: widget.controller,
          obscureText: widget.isPassword ? true : false,
          decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(color: Colors.grey),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              focusedBorder: outlineInputBorder(Colors.white),
              enabledBorder: outlineInputBorder(Colors.grey)),
        )
      ],
    );
  }

  OutlineInputBorder outlineInputBorder(Color borderColor) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: borderColor,
          width: 1.5,
        ));
  }
}
