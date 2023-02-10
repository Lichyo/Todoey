import 'package:flutter/material.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskTitle: 'Mission 1'),
    Task(taskTitle: 'Mission 2'),
    Task(taskTitle: 'Mission 3'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String taskTitle) {
    _tasks.add(Task(taskTitle: taskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
