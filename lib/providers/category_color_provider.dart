import 'package:flutter/material.dart';

class CategoryColorProvider extends ChangeNotifier{

 final List<Color> _colors = [
  const Color(0xFFCCFF80),
  const Color(0xFFFF9680), 
  const Color(0xFF80FFFF), // Sport
  const Color(0xFF80FFD9), // Design
  const Color(0xFF809CFF), // University
  const Color(0xFFFF80EB), // Social
  const Color(0xFFFC80FF), // Music
  const Color(0xFF80FFA3), // Health
  const Color(0xFF80D1FF), // Movie
  const Color(0xFFFFCC80), // Home
  const Color(0xFF80FFD1), // Create New
];

List<Color> get colors => _colors;
Color? _selectedColor;
Color? get selectedColor => _selectedColor;

void setSelctedColor(Color color) {
  _selectedColor = color;
  notifyListeners();
}


}