import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  AddTaskScreen({Key? key}) : super(key: key);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 1000,
      width: 100,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Text('Task Title' ,style: TextStyle(color: Colors.black, fontSize:20),),
          TextField(),
          Text('Task Description' ,style: TextStyle(color: Colors.black, fontSize: 20),),
          TextField(),
    ],),
      ),);
  }
}
