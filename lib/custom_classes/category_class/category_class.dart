import 'package:flutter/material.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/models/category_model.dart';

class CategoryClass {
  static Future<void> catergoryClass(BuildContext context) async {
    List<CategoryModel> categories = [
      CategoryModel(
        name: 'Grocery',
        iconPath: Assets.category.grocery.path,
        categoryColor: const Color(0xFFCCFF80),
      ),
      CategoryModel(
        name: 'Work',
        iconPath: '', // You'll fill this
        categoryColor: const Color(0xFFFF9680),
      ),
      CategoryModel(
        name: 'Sport',
        iconPath: '', // You'll fill this
        categoryColor: const Color(0xFF80FFFF),
      ),
      CategoryModel(
        name: 'Design',
        iconPath: '', // You'll fill this
        categoryColor: const Color(0xFF80FFD9),
      ),
      CategoryModel(
        name: 'University',
        iconPath: '', // You'll fill this
        categoryColor: const Color(0xFF809CFF),
      ),
      CategoryModel(
        name: 'Social',
        iconPath: '', // You'll fill this
        categoryColor: const Color(0xFFFF80EB),
      ),
      CategoryModel(
        name: 'Music',
        iconPath: '', // You'll fill this
        categoryColor: const Color(0xFFFC80FF),
      ),
      CategoryModel(
        name: 'Health',
        iconPath: '', // You'll fill this
        categoryColor: const Color(0xFF80FFA3),
      ),
      CategoryModel(
        name: 'Movie',
        iconPath: '', // You'll fill this
        categoryColor: const Color(0xFF80D1FF),
      ),
      CategoryModel(
        name: 'Home',
        iconPath: '', // You'll fill this
        categoryColor: const Color(0xFFFFCC80),
      ),
      CategoryModel(
        name: 'Create New',
        iconPath: '', // You'll fill this
        categoryColor: const Color(0xFF80FFD1),
      ),
    ];
    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: IntrinsicHeight(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(color: category.categoryColor),
                    child: Center(
                      child: Image.asset(category.iconPath.toString()),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
