import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkBoxCallback(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 20,
        ),
      ),
      trailing: TaskCheckbox(
          checkBoxState: isChecked, toggleCheckBoxState: checkBoxCallback),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBoxState;

  const TaskCheckbox(
      {Key? key,
      required this.checkBoxState,
      required this.toggleCheckBoxState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.blue,
        value: checkBoxState,
        onChanged: (newValue) {
          toggleCheckBoxState(newValue);
          // (newValue)
          // {
          //    setState(() {
          //     checkboxState = newValue;
          //   });
          // });
        });
  }
}
