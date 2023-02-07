import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(taskTitle: 'Mission 1'),
    Task(taskTitle: 'Mission 2'),
    Task(taskTitle: 'Mission 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
      return TaskTile(
        taskName: tasks[index].taskTitle,
        isChecked: tasks[index].isDone,
        checkboxCallback: (bool? value){
          setState(() {
            tasks[index].toggleDone();
          });
        },
      );
    });
  }
}
