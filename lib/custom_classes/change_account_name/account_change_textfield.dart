import 'package:flutter/material.dart';

class AccountChangeTextfield extends StatelessWidget {
  const AccountChangeTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
            color: Colors.grey, 
            width: 0.8
          )
        );
  }
}