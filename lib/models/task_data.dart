import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskTitle: 'Mission 1'),
    Task(taskTitle: 'Mission 2'),
    Task(taskTitle: 'Mission 3'),
  ];
  
  int get() {
    return tasks.length;
  }

}