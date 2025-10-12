import 'package:flutter/material.dart';
import 'package:todolist/gen/assets.gen.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String leading;
  final bool showTrailing;
  final VoidCallback onTap;
  const CustomListTile({super.key, required this.title, required this.leading, this.showTrailing = true, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
          leading: Image.asset(leading),
          trailing: showTrailing ? Assets.icons.arrowLeft.image() : null,
          title: Text(title.toString(), style: TextStyle(color:showTrailing ? Colors.white : Colors.red),),
          ),
    );
  }
}