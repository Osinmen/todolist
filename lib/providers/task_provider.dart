import 'package:flutter/material.dart';
import 'package:todolist/models/task_model.dart';

class TaskProvider extends ChangeNotifier {
  //implement provider task management here
  final List<TaskModel> _lists = [];

  List<TaskModel> get list => _lists;
//so whenever this model is called, 
  void addTasks(TaskModel tasks) {
      _lists.add(tasks);
      notifyListeners();
  }
  TaskModel? _selectedTask;
  TaskModel? get selectedTask  => _selectedTask;

  //create a setter 
  void setSelectedTask(TaskModel task) {
    _selectedTask = task;
    notifyListeners();
  }

  void clear_all() {
    _lists.clear();
  }
}
