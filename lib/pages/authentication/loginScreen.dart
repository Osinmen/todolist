import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/pages/authentication/signupScreen.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';
import 'package:todolist/widgets/buttons/loginbutton2.dart';
import 'package:todolist/widgets/buttons/services_button.dart';
import 'package:todolist/widgets/customTextfield.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}
  
  
class _LoginscreenState extends State<Loginscreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

    TextStyle _textStyle = TextStyle();
  void _isFormFilled() {
    setState(() {
      bool allFilled =
          _emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty;
          

      if (allFilled) {
        _buttonColor = AppColors.secondaryButtonColor;
        _textStyle = AppTextStyles.heading2;
        _buttonAction = () async{
          print("implement login function");
          await loginUserwithEmailandPassword();
        };
      } else {
        _buttonColor = AppColors.secondaryButtonColor.withOpacity(0.5);
        _buttonAction = null; //to disable tap
        _textStyle = TextStyle(
          color: Colors.grey[600],
          fontSize: 14,
          fontWeight: FontWeight.bold,
        );
      }
    });
  }


  Future<void> loginUserwithEmailandPassword() async {
    try {
      FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
    } on FirebaseAuthException catch(e) {
      print(e.message);
    }
  } 
  
  
  VoidCallback? _buttonAction;
  Color _buttonColor = AppColors.secondaryButtonColor.withOpacity(0.5);

  void dispose() {

    super.dispose();
    _emailController.dispose();
  _passwordController.dispose();
  }

  void initState() {
    super.initState();
    _emailController.addListener(_isFormFilled);
    _passwordController.addListener(_isFormFilled);
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
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Assets.icons.backButton.image(),
                ),
                40.height,
                Text("Login", style: AppTextStyles.heading1),
                15.height,
                Customtextfield(
                  controller: _emailController,
                  isPassword: false,
                  fieldTitle: "Email",
                ),
                15.height,
                Customtextfield(
                  controller: _passwordController,
                  isPassword: true,
                  fieldTitle: "Password",
                ),
                70.height,
                Loginbutton2(
                  textStyle: _textStyle,
                  buttonAction: _buttonAction,
                centerText: "Login",
                color: _buttonColor,
                ), 
                40.height, 
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
                  40.height,
                    ServicesButton(
                    centerText: "Login with Google",
                    imagePath: Assets.icons.google.path,
                  ),
                  15.height, 
                   ServicesButton(
                    centerText: "Login with Apple",
                    imagePath: Assets.icons.apple.path,
                  ),
                  50.height, 
                   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: TextStyle(
                      color: Colors.white
                    ),), 
                    5.width, 
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const Signupscreen();
                        }));
                      },
                      child: Text("Register", style: TextStyle(
                        color: Colors.grey, 
                        fontWeight: FontWeight.bold
                      ),),
                    )
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
