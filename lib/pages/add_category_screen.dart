import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';
import 'package:todolist/widgets/category_screen_widgets/category_textfield.dart';

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create New Category", style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Colors.white, 
                fontSize: 22
              ),), 
              20.height, 
              Text("Category Name: ", style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 18, 
                color: Colors.white
              ),), 
              20.height,
              CategoryTextfield(),
              20.height, 
                    Text("Category icon: ", style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 18, 
                color: Colors.white
              ),), 
          
            ],
          ),
        ),
      ),
    );
  }
}