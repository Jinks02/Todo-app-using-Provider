import 'package:flutter/material.dart';
import 'package:todo_state_management/widgets/task_tile.dart';

import '../models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_state_management/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskDataClassObj, Widget? child) {
        // Provider.of<TaskData>(context) replaced with taskDataObj
        return ListView.builder(
          itemCount: taskDataClassObj.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskDataClassObj.tasksListGetter[index].isDone,
              taskTitle: taskDataClassObj.tasksListGetter[index].name,
              checkboxCallback: (bool? checkboxState) {
                taskDataClassObj.toggleTask(taskDataClassObj.tasksListGetter[
                    index]); // toggle done and notify listeners the task at the current index ny using the object of task_data class
              },
              longPressCallback: () {
                taskDataClassObj
                    .deleteTask(taskDataClassObj.tasksListGetter[index]);
              },
            );
          },
        );
      },
    );
  }
}
