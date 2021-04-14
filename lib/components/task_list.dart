import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task.dart';
import 'package:todolist/models/tasks.dart';

import 'task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = Provider.of<Tasks>(context).taskList;

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
