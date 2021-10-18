import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  AddTaskScreen({Key? key}) : super(key: key);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Expanded(
          child: Column(
            children: <Widget>[Text('Task'), Text('Description')],
          ),
        ),
      ),
    );
  }
}
