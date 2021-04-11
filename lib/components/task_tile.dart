import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String label;
  final bool isChecked;
  final Function updateStateCallback;

  TaskTile({this.label, this.isChecked, this.updateStateCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: updateStateCallback,
      ),
    );
  }
}
