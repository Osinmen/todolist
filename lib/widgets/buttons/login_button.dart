import 'package:flutter/material.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';

class LoginButton extends StatelessWidget {
  final String centerText;
  const LoginButton({super.key, required this.centerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.secondaryButtonColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(child: Text(centerText, style: AppTextStyles.heading2)),
    );
  }
}

//ONLY USED ONCE IN TE ENTIRE APP HENCE WHY I CREATED
class CreateAccountButton extends StatelessWidget {
  final String centerText;
  const CreateAccountButton({super.key, required this.centerText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        border: BoxBorder.all(
          color: AppColors.secondaryButtonColor,

          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(child: Text(centerText, style: AppTextStyles.heading2)),
    );
  }
}
