import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/tasks.dart';
import 'package:todolist/screens/todo_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Tasks>(
      create: (context) => Tasks(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.lightBlueAccent,
        ),
        home: TodoListScreen(),
      ),
    );
  }
}
