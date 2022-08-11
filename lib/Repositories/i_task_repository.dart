import 'package:what_to_do_app/Models/task_model.dart';

abstract class ITaskRepository{
  Future<List<TaskModel>?> getAllTask();
}