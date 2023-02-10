import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {super.key,
      required this.taskName,
      required this.isChecked,
      this.checkboxCallback});

  final String taskName;
  final bool isChecked;
  Function? checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          fontSize: 20.0,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (bool? value) {
          checkboxCallback!();
        },
      ),
    );
  }
}
