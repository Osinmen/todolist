import 'package:flutter/material.dart';

class CategoryTextfield extends StatelessWidget {
  final TextEditingController controller;
  const CategoryTextfield({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15 ),
        enabledBorder: outlineInputBorder(), 
        focusedBorder: outlineInputBorder(),
        hintText: "Category name",
        hintStyle: TextStyle(
          color: Colors.grey, 

        )
      ),
    );
  }
  OutlineInputBorder outlineInputBorder () {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8), 
      borderSide: BorderSide(
        color: Colors.grey, 
        width: 01
      )
    );
  }
}