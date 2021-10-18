import 'package:flutter/material.dart';
import 'package:what_to_do_app/Models/TaskItemModel.dart';

class TaskData extends ChangeNotifier {
  List<TaskItemModel>? models;

  TaskData({this.models}) {
    this.models = [
      TaskItemModel('xxx', 'xx', false),
      TaskItemModel('xxx', 'xx', false),
      TaskItemModel('xxx', 'xx', false)
    ];
  }

  void addData(TaskItemModel data) {
    models!.add(data);
    notifyListeners();
  }

  void removeData(int index){
    models!.removeAt(index);
    notifyListeners();
  }
}
