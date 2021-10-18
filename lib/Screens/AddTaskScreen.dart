import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:what_to_do_app/Models/TaskItemModel.dart';

class AddTaskScreen extends StatelessWidget {
  String? _taskTitle;
  String? _taskDescription;

  final TextEditingController _tfTitleController = TextEditingController();
  final TextEditingController _tfTitleDescriptionController =
      TextEditingController();

  AddTaskScreenState(String taskTitle, String taskDescription) {
    _tfTitleController.text = taskTitle;
    _tfTitleDescriptionController.text = taskDescription;
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
                  this._taskTitle = newValue;
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
                  this._taskDescription = newValue;
                },
              ),
              SizedBox(
                height: 10,
              ),
              RawMaterialButton(
                  onPressed: () {
                    Navigator.pop(context,TaskItemModel(this._taskTitle!, this._taskDescription!, false));
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
