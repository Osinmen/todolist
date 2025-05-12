import 'package:flutter/material.dart';
import 'package:todolist/constants/theme.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/Back Button.png"),
              const SizedBox(
                height: 50,
              ),
              //column fot the text so i can center it
              Center(
                child: Column(
                  children: [
                    Text(
                      "Welcome to UpTodo",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Please login to your account or create \nnew account to continue",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: appTheme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(4)),
                child: Center(child: Text("LOGIN")),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: appTheme.colorScheme.background,
                    border: Border.all(
                      width: 2,
                      color: appTheme.colorScheme.primary,
                    ),
                    borderRadius: BorderRadius.circular(4)),
                child: Center(child: Text("CREATE ACCOUNT")),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
