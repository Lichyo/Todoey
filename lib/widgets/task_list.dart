import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.tasks.length,
        itemBuilder: (context, index) {
          final Task task = taskData.tasks[index];
          return TaskTile(
            position: index,
            taskName: task.taskTitle,
            isChecked: task.isDone,
            checkboxCallback: (){
              taskData.updateTask(task);
            },
            onLongPressed: (){
              taskData.removeTask(task);
            },
          );
        },
      );
    });
  }
}
