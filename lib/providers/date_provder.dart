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


// the very probelm that am having right now is that i want to fina a way to add this time to 
//the list of providers such taht when something is clicked the time is then stored on this provider and 
//then used to design my UI