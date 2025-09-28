import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/pages/authentication/signupScreen.dart';
import 'package:todolist/pages/taskPages/task_page.dart';
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
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(backgroundColor: Colors.red, radius: 30),
          20.height,
          Row(
            children: [
              Remainingtaskbutton(text: "10 tasks Left"),
              20.width,
              Remainingtaskbutton(text: "5 task done"),
            ],
          ),
          20.height,
          Text("Settings", style: TextStyle(color: Colors.white)),
          20.height,
          CustomListTile(
            islogout: false,
            title: "App Setting",
            leading: Assets.icons.setting2.path,
            routeDestination: Signupscreen(),
          ),
          10.height,
          CustomListTile(title: "Change account name", leading: Assets.icons.profile.path, routeDestination: TaskPage(), )
        ],
      ),
    );
  }
}
