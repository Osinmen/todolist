import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/pages/authentication/loginScreen.dart';
import 'package:todolist/pages/authentication/signupScreen.dart';
import 'package:todolist/themes/textThemes.dart';
import 'package:todolist/widgets/buttons/login_button.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Assets.icons.backButton.image()),
            ), 
            40.height, 
            Text("Welcome to UpToDo", style: AppTextStyles.heading1,), 
            20.height, 
            Text("Please login to your account or create\nnew account to continue", style: AppTextStyles.heading2, textAlign: TextAlign.center,), 
            const Spacer(), 
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Loginscreen();
                }));
              },
              child: LoginButton(centerText: "LOGIN")),
            20.height,
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Signupscreen();
                }));
              },
              child: CreateAccountButton(centerText: "CREATE ACCOUNT")),
            50 .height
          ],
        ),
      ),
      ),
    );
  }
}