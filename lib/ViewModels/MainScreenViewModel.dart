import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:what_to_do_app/Base/BaseViewModel.dart';
import 'package:what_to_do_app/Models/TaskModel.dart';

@injectable
class MainScreenViewModel extends BaseViewModel {
  final List<TaskModel>? _tasksData = [TaskModel("makan", false), TaskModel("minum", false)];

  List<TaskModel> get taskData => _tasksData ?? [];  
  int get taskDataCount => _tasksData?.length ?? 0;
  
  Future<void> onAddTaskClicked(String textValue) async {
    _tasksData?.add(TaskModel(textValue, false));
    notifyListeners();
  }
}
