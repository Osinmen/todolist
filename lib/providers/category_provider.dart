import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/models/category_model.dart';

class CategoryProvider extends ChangeNotifier{
final List<CategoryModel> _categories = [
      CategoryModel(
        name: 'Grocery',
        iconPath: Assets.category.grocery.path,
        categoryColor: const Color(0xFFCCFF80),
      ),
      CategoryModel(
        name: 'Work',
        iconPath: Assets.category.work.path, // You'll fill this
        categoryColor: const Color(0xFFFF9680),
      ),
      CategoryModel(
        name: 'Sport',
        iconPath: Assets.category.sport.path, // You'll fill this
        categoryColor: const Color(0xFF80FFFF),
      ),
      CategoryModel(
        name: 'Design',
        iconPath: Assets.category.design.path, // You'll fill this
        categoryColor: const Color(0xFF80FFD9),
      ),
      CategoryModel(
        name: 'University',
        iconPath: Assets.category.university.path, // You'll fill this
        categoryColor: const Color(0xFF809CFF),
      ),
      CategoryModel(
        name: 'Social',
        iconPath: Assets.category.social.path, // You'll fill this
        categoryColor: const Color(0xFFFF80EB),
      ),
      CategoryModel(
        name: 'Music',
        iconPath: Assets.category.music.path, // You'll fill this
        categoryColor: const Color(0xFFFC80FF),
      ),
      CategoryModel(
        name: 'Health',
        iconPath: Assets.category.health.path, // You'll fill this
        categoryColor: const Color(0xFF80FFA3),
      ),
      CategoryModel(
        name: 'Movie',
        iconPath: Assets.category.movie.path, // You'll fill this
        categoryColor: const Color(0xFF80D1FF),
      ),
      CategoryModel(
        name: 'Home',
        iconPath: Assets.category.home.path, // You'll fill this
        categoryColor: const Color(0xFFFFCC80),
      ),
      CategoryModel(
        name: 'Create New',
        iconPath: Assets.category.addTask.path, // You'll fill this
        categoryColor: const Color(0xFF80FFD1),
      ),
    ];
    
  //this is the getter that will be available outside the class

    List<CategoryModel> get categories => _categories;
    CategoryModel? _selectedCategory;
    CategoryModel? get selectedCategory => _selectedCategory;

    //setter

    void setSelectedCategory(CategoryModel category) {
      //set the value to take the category
     _selectedCategory = category;
    }
    void add(CategoryModel categoryBox) {
      _categories.insert(_categories.length - 1, categoryBox);
      notifyListeners();
    }

}

//from the above provider class when the selected caregory is selected what happens is that
/* 
from the above what happens is that we have a getter and a setter which takes hthe class
category
so when the user clicks on a specific button for instance
the category uses the setter to add the selected clicked category into theother page
that takes the particular value i want to add
*/