import 'package:flutter/material.dart';
import 'package:todolistapp_updates/models/task.dart';
import 'package:todolistapp_updates/widgets/TasksTile.dart';


class TasksList extends StatefulWidget {
  const TasksList ({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy breads'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  <Widget>[
        TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone,),
        TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
        TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
      ],
    );
  }
}