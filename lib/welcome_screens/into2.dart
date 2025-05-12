import 'package:flutter/material.dart';
import 'package:todolist/components/container_view.dart';

class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    return ContainerViewConstants(
        image: "assets/Frame 162.png",
        smallText:
            "in up to do you can create your \n personalized routine to stay productive ",
        largeText: "Create Your Daiy routine");
  }
}
