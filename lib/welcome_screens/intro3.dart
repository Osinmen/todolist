import 'package:flutter/material.dart';
import 'package:todolist/components/container_view.dart';
import 'package:todolist/constants/theme.dart';

class Intro3 extends StatefulWidget {
  const Intro3({super.key});

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  @override
  Widget build(BuildContext context) {
    return ContainerViewConstants(
        smallText:
            "You can organize your daily tasks by \nadding your tasks into separate categories",
        largeText: "Organize your Tasks",
        image: "assets/Frame 161.png");
  }
}
