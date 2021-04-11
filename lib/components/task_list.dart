import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';

import 'task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = widget.tasks;

    return ListView.builder(
      padding: EdgeInsets.all(30.0),
      itemBuilder: (context, index) {
        return TaskTile(
            label: tasks[index].name,
            isChecked: tasks[index].isDone,
            updateStateCallback: (bool checkboxState) {
              setState(() {
                tasks[index].toggleIsDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
