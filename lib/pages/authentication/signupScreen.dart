import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/pages/authentication/loginScreen.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';
import 'package:todolist/widgets/buttons/loginbutton2.dart';
import 'package:todolist/widgets/buttons/services_button.dart';
import 'package:todolist/widgets/customTextfield.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Color _buttonColor = AppColors.secondaryButtonColor.withOpacity(0.5);
  TextStyle _textStyle = TextStyle();

  VoidCallback? _buttonAction;
  void _isFormFilled() {
    setState(() {
      bool allFilled =
          _emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty &&
          _confirmPasswordController.text.isNotEmpty;

      if (allFilled) {
        _buttonColor = AppColors.secondaryButtonColor;
        _textStyle = AppTextStyles.heading2;
        _buttonAction = () async{
        
          print("implement login function");


        await createUserwithEmailandPassword();
        
        };
      } else {
        _buttonColor = AppColors.secondaryButtonColor.withOpacity(0.5);
        _buttonAction = null; //to disable tap
        _textStyle = TextStyle(
          color: Colors.grey[200],
          fontSize: 14,
          fontWeight: FontWeight.bold,
        );
      }
    });
  }

  //to listen to the changes in the textfield
  @override
  void initState() {
    super.initState();
    _confirmPasswordController.addListener(_isFormFilled);
    _passwordController.addListener(_isFormFilled);
    _emailController.addListener(_isFormFilled);
  }

  Future<void> createUserwithEmailandPassword() async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim(),
          );
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //implement children of this page
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Assets.icons.backButton.image(),
                ),
                15.height,
                Text("Register", style: AppTextStyles.heading1),
                20.height,
                Customtextfield(
                  fieldTitle: "Email",
                  isPassword: false,
                  controller: _emailController,
                ),
                15.height,
                Customtextfield(
                  controller: _passwordController,
                  isPassword: true,
                  fieldTitle: "Password",
                ),
                15.height,
                Customtextfield(
                  controller: _confirmPasswordController,
                  isPassword: true,
                  fieldTitle: "Confirm Password",
                ),

                30.height,
                Loginbutton2(
                  textStyle: _textStyle,
                  buttonAction: _buttonAction,
                  centerText: "Register",
                  color: _buttonColor,
                ),
                20.height,
                Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 1.0, color: Colors.grey),
                    ),
                    10.width,
                    Text("Or", style: AppTextStyles.heading2),
                    10.width,
                    Expanded(
                      child: Divider(thickness: 1.0, color: Colors.grey),
                    ),
                  ],
                ),
                20.height,
                ServicesButton(
                  centerText: "Register with Google",
                  imagePath: Assets.icons.google.path,
                ),
                15.height,
                ServicesButton(
                  centerText: "Register with Apple",
                  imagePath: Assets.icons.apple.path,
                ),
                40.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    5.width,
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Loginscreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


