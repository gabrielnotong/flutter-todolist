import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          padding: EdgeInsets.all(30.0),
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              label: task.name,
              isChecked: task.isDone,
              updateStateCallback: (bool checkboxState) {
                taskData.updateTask(task);
              },
              deleteCallback: () {
                taskData.removeTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
