import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskName: taskData.tasks[index].taskTitle,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (){
              taskData.updateTask(taskData.tasks[index]);
            },
          );
        },
      );
    });
  }
}
