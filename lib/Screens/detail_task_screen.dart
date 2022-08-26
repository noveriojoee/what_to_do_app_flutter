import 'package:flutter/material.dart';
import 'package:what_to_do_app/Base/base_view.dart';
import 'package:what_to_do_app/Models/task_model.dart';
import 'package:what_to_do_app/ViewModels/detail_screen_view_model.dart';

class DetailTaskScreen extends BaseView<DetailScreenViewModel> {
  final TaskModel taskData;

  DetailTaskScreen({required this.taskData});

  @override
  Widget build(BuildContext context, DetailScreenViewModel viewModel, Widget? child) {
    return Scaffold(
      body: Center(child: Text(taskData.title + ' ' + taskData.description)),
    );
  }
  
}