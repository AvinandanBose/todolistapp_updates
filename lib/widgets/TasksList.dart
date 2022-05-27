import 'package:flutter/material.dart';
import 'package:todolistapp_updates/models/task.dart';
import 'package:todolistapp_updates/widgets/TasksTile.dart';


class TasksList extends StatefulWidget {
  final List<Task> tasks;
  const TasksList ({
    Key? key, required this.tasks
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(taskTitle: widget.tasks[index].name, isChecked: widget.tasks[index].isDone,
        checkboxCallback : (bool checkboxState){
        setState((){
          widget.tasks[index].toggleDone() ;

        });
        }
      );
    },
      itemCount: widget.tasks.length,
    );
  }
}