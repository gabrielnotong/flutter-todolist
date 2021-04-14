import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todolist/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleIsDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }
}
