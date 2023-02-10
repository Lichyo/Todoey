import 'package:flutter/material.dart';

class Task {
  final String taskTitle;
  bool isDone;
  Task({required this.taskTitle,this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }


}