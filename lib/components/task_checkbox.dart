import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function toggleCheckboxState;

  TaskCheckBox({this.isChecked, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: toggleCheckboxState,
    );
  }
}
