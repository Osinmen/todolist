import 'package:flutter/material.dart';
import 'package:todolist/components/custom_login_button.dart';
import 'package:todolist/components/customtextfield.dart';
import 'package:todolist/constants/app_images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isFilled = false;

  void checkFormValidity() {
    setState(() {
      isFilled =
          emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(checkFormValidity);
    passwordController.addListener(checkFormValidity);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImages.backButton),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextField(
              controller: emailController,
              textFieldType: "Username",
              isPassword: false,
              hintText: "Enter your Username",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              controller: passwordController,
              textFieldType: "Password",
              isPassword: true,
              hintText: "•••••••••••••••••",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  color: Colors.grey,
                )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Text("or")),
                Expanded(
                    child: Divider(
                  color: Colors.grey,
                ))
              ],
            ),
            CustomLoginButton(
                isEnabled: isFilled,
                onPressed: () {
                  //implemenet todo functionality
                },
                text: "Login")
          ],
        ),
      )),
    );
  }
}
