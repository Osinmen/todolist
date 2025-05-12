import 'package:flutter/material.dart';
import 'package:todolist/components/container_view.dart';
import 'package:todolist/constants/theme.dart';

class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    return ContainerViewConstants(
      smallText: "You can easily manage all your tasks\n in DoMe for free",
      largeText: "Manage Your Tasks",
      image: "assets/Group 182.png",
    );
  }
}
