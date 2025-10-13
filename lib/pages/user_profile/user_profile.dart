import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todolist/custom_classes/category_class/category_class.dart';
import 'package:todolist/custom_classes/change_account_name/changeAccountName.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/pages/authentication/signupScreen.dart';
import 'package:todolist/pages/taskPages/task_page.dart';
import 'package:todolist/test.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/widgets/user_profile_widgets/custom_list_tile.dart';
import 'package:todolist/widgets/user_profile_widgets/remainingtaskbutton.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              10.height,
              Text(
                "Profile",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              10.height,
              CircleAvatar(backgroundColor: Colors.red, radius: 50),
              10.height,
              Text("username placeholder"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Remainingtaskbutton(text: "10 tasks Left"),
                  20.width,
                  Remainingtaskbutton(text: "5 task done"),
                ],
              ),
              20.height,
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              20.height,
              CustomListTile(
                onTap: () {
                  //todo implement functionality
                  CategoryClass.opencatergoryClass(context);
                },
                title: "App Setting",
                leading: Assets.icons.setting2.path,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Account", style: TextStyle(color: Colors.white)),
                ),
              ),

              CustomListTile(
                title: "Change account name",
                leading: Assets.icons.user.path,
                onTap: () async {
                  await Changeaccountname.changeAccountName(context);
                },
              ),

              CustomListTile(
                onTap: () {
                  () async {
                    await showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Test'),
                        content: Text('Dialog works!'),
                      ),
                    );
                  };
                },
                title: "Change account password",
                leading: Assets.icons.key.path,
              ),
              CustomListTile(
                title: "Change account Image",
                leading: Assets.icons.like.path,
                onTap: () {},
              ),
              10.height,
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Uptodo", style: TextStyle(color: Colors.white)),
                ),
              ),
              CustomListTile(
                title: "About Us",
                leading: Assets.icons.menu.path,
                onTap: () {},
              ),
              CustomListTile(
                title: "FAQ",
                leading: Assets.icons.infoCircle.path,
                onTap: () {},
              ),
              CustomListTile(
                title: "Help & Feedback",
                leading: Assets.icons.flash.path,
                onTap: () {},
              ),
              CustomListTile(
                title: "Support Us",
                leading: Assets.icons.like.path,
                onTap: () {},
              ),
              CustomListTile(
                title: "Log out",
                leading: Assets.icons.logout.path,
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                },
                showTrailing: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

