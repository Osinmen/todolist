import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';

//customtextfield
class Customtextfield extends StatefulWidget {
  final TextEditingController? controller;
  final String? fieldTitle;
  bool isPassword = false;
   Customtextfield({
    super.key,
    required this.controller,
  
    required this.isPassword, 
    required this.fieldTitle
  });

  @override
  State<Customtextfield> createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(widget.fieldTitle.toString(), style: AppTextStyles.heading2,),
         10.height, 
        TextField(
        style: AppTextStyles.body,
          obscureText: widget.isPassword ? true : false ,
          controller: widget.controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black,
            hintText: widget.isPassword ? "••••••••••••••••••" : "Enter Your Username",
            contentPadding: const EdgeInsets.symmetric(vertical:15, horizontal: 15),
            focusedBorder: _outlineInputBorder(), 
            enabledBorder: _outlineInputBorder()
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(8), 
      borderSide: BorderSide(
        color: Colors.grey, 
        width: 1.0
      ), 
      
      );
  }
}
