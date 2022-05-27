import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool? isChecked ;
   final String? taskTitle;
   const TaskTile({Key? key,  this.isChecked , this.taskTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (newValue){},

    ),
    );
  }
}


