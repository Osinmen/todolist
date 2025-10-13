import 'package:flutter/material.dart';

class IconProvider extends ChangeNotifier{ 

    final List<IconData> _icons = [
    Icons.shopping_cart,
    Icons.work,
    Icons.sports_soccer,
    Icons.design_services,
    Icons.school,
    Icons.people,
    Icons.music_note,
    Icons.health_and_safety,
    Icons.movie,
    Icons.home,
    Icons.add,
    Icons.book,
    Icons.camera_alt,
    Icons.computer,
    Icons.fastfood,
    Icons.flight,
    Icons.directions_car,
    Icons.pets,
    Icons.phone,
    Icons.wifi,
    Icons.games,
    Icons.chat,
    Icons.fitness_center,
    Icons.language,
    Icons.nightlight,
    Icons.palette,
    Icons.favorite,
    Icons.science,
    Icons.lightbulb,
  ];
  List<IconData> get icons => _icons;

  IconData? _selectedIcon;
  IconData? get selectedIcon => _selectedIcon;
  
  void setSelectedIcon(IconData icon) {
    _selectedIcon = icon;
    notifyListeners();
  } 
}

//dont give up never give up