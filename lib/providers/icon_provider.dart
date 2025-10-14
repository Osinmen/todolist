import 'package:flutter/material.dart';
import 'package:todolist/gen/assets.gen.dart';

class IconProvider extends ChangeNotifier{ 

  final List<String> _icons = [
 Assets.category.grocery.path,
  Assets.category.work.path,
  Assets.category.sport.path,
  Assets.category.design.path,
  Assets.category.university.path,
  Assets.category.social.path,
  Assets.category.music.path,
  Assets.category.health.path,
  Assets.category.movie.path,
  Assets.category.home.path,
  Assets.category.addTask.path,
  ];
  List<String> get icons => _icons;

  String? _selectedIcon;
  String? get selectedIcon => _selectedIcon;
  
  void setSelectedIcon(String icon) {
    _selectedIcon = icon;
    notifyListeners();
  } 
}

//dont give up never give up