import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTaskScreen extends StatefulWidget {
  String? _taskTitle;
  String? _taskDescription;

  AddTaskScreen(this._taskTitle, this._taskDescription);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState(_taskTitle!, _taskDescription!);
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String? taskTitle;
  String? taskDescription;
  final TextEditingController _tfTitleController = TextEditingController();
  final TextEditingController _tfTitleDescriptionController =
      TextEditingController();

  _AddTaskScreenState(String taskTitle, String taskDescription) {
    this.taskTitle = taskTitle;
    this.taskDescription = taskDescription;

    _tfTitleController.text = this.taskTitle != null ? this.taskTitle! : '';
    _tfTitleDescriptionController.text = this.taskDescription != null ? this.taskDescription! : '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Task Title',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              TextField(
                textAlign: TextAlign.center,
                controller: _tfTitleController,
                onChanged: (newValue) {
                  print(newValue);
                },
              ),
              Text(
                'Task Description',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              TextField(
                textAlign: TextAlign.center,
                controller: _tfTitleDescriptionController,
                onChanged: (newValue) {
                  print(newValue);
                },
              ),
              SizedBox(
                height: 10,
              ),
              RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.lightBlue,
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
