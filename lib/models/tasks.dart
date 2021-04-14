import 'package:flutter/cupertino.dart';
import 'package:todolist/models/task.dart';

class Tasks extends ChangeNotifier {
  List<Task> taskList = [];

  void addTask(Task task) {
    taskList.add(task);
    notifyListeners();
  }

  int size() {
    return taskList.length;
  }
}
