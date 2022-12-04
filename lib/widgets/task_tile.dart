import 'package:flutter/material.dart';
import 'dart:developer';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  late final String taskTitle;
  late final ValueChanged<bool?> checkboxCallback;
  VoidCallback longPressCallback;

  TaskTile(
      {this.isChecked = false,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
