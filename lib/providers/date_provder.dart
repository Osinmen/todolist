import 'package:flutter/material.dart';

class DateProvider extends ChangeNotifier {
  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  //setter
  void setSelectedDate(DateTime date) {
    _selectedDate = date;
    notifyListeners();

  }

  
}


