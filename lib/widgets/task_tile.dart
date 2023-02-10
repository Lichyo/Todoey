import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {super.key,
      required this.taskName,
      required this.isChecked,
      this.checkboxCallback,
      this.onLongPressed,
      required this.position});

  final String taskName;
  final bool isChecked;
  final int position;
  Function? checkboxCallback;
  Function? onLongPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        onLongPressed!();
      },
      title: Text(
        taskName,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          color: (position%2 == 0) ? Colors.black : Colors.grey.shade600,
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
