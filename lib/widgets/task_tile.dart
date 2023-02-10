import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Напряг 2',
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
          checkboxState: isChecked,
          toggleCheckboxState: (checkboxState) {
      setState(() {
      isChecked = checkboxState;
      });

      }
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?)? toggleCheckboxState;

  TaskCheckbox(
  {@required this.checkboxState, @required this.toggleCheckboxState}
      );


  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkboxState,
        onChanged: toggleCheckboxState,
    );
  }
}
