import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child:  Text(
                  'Add Text',
                style: TextStyle(
                  fontSize: 30.0,
                  color:Colors.lightBlueAccent
                ),
              ),
            ),
            const TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: (){

              },
              child: Text('Add'),
              color: Colors.lightBlueAccent,

            ),
          ],
        ),
      ),
    );
  }
}
