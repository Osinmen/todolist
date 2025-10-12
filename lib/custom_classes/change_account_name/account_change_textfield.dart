import 'package:flutter/material.dart';

class AccountChangeTextfield extends StatelessWidget {
  const AccountChangeTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          hintText: "AccountName place holder",
        hintStyle: TextStyle(color: Colors.white, )
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), 
          borderSide: BorderSide(
            color: Colors.white, 
            width: 1.0
          )
        );
  }
}