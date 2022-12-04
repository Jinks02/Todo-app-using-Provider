import 'package:flutter/material.dart';
import 'package:todo_state_management/models/task_data.dart';
import 'package:todo_state_management/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) {
          return TaskData();
        },
        child: MaterialApp(home: TasksScreen()));
  }
}
