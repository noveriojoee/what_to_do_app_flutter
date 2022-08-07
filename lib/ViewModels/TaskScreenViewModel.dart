import 'package:flutter/material.dart';
import 'package:what_to_do_app/Models/TaskModel.dart';

class TaskScreenViewModel extends ChangeNotifier {
  final List<TaskModel>? listData;

  TaskScreenViewModel({this.listData});

  void addTaskData(String taskTitle, String taskDescription) {}
}
