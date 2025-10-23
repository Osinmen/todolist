import 'package:flutter/material.dart';
import 'package:todolist/custom_classes/change_account_name/account_change_textfield.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/themes/colors.dart';

class Changeaccountname {
  static Future<void> changeAccountName(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          backgroundColor: AppColors.textPrimary,
          insetPadding: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Text("Change account name", style: TextStyle(
                    color: Colors.white, fontSize: 16, 
                  fontWeight: FontWeight.bold, 
                  ),),
                  10.height,
                  Divider(color: Colors.grey, thickness: 0.7),
                  15.height,
                  AccountChangeTextfield(),
                  10.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: AppColors.secondaryButtonColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.secondaryButtonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:20),
                          child: Text("Edit", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
