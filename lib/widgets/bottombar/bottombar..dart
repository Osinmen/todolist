import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/themes/colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.textPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Assets.icons.home.image(height: 27 , width:27),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: Assets.icons.calendar.image(height: 27, width: 27),
          ),
          30.width,
          IconButton(
            icon: Assets.icons.clock.image(height: 27, width: 27, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Assets.icons.profile.image(height: 27, width: 27),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
