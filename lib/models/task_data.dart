import 'package:flutter/material.dart';
import 'package:todolistapp_updates/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy breads'),
  ];
  int get taskCount{
    return tasks.length;
  }
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}