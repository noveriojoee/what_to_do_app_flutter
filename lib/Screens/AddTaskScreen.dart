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
                onChanged: (newValue) {
                  print(newValue);
                },
              ),
              SizedBox(
                height: 10,
              ),
              RawMaterialButton(
                  onPressed: () {
                    print('button pressed');
                  },
                  child: Container(
                    color: Colors.lightBlue,
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          'Add Task',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
