import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTaskScreen extends StatelessWidget {
	String _task;
	Function onTaskAdd;

  AddTaskScreen(this.onTaskAdd);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Add your task here ..",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (newValue) {
                  _task = newValue;
                },
              ),
              FlatButton(
                onPressed: () => onTaskAdd(context, _task),
                color: Colors.lightBlueAccent,
                child: Text("ADD"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
