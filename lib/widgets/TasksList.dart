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
    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(taskTitle: tasks[index].name, isChecked: tasks[index].isDone,
        checkboxCallback : (bool checkboxState){
        setState((){
          tasks[index].toggleDone() ;

        });
        }
      );
    },
      itemCount: tasks.length,
    );
  }
}