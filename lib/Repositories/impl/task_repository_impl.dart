import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:what_to_do_app/Models/task_model.dart';
import 'package:what_to_do_app/Repositories/dto/get_all_task_dto.dart';
import 'package:what_to_do_app/Repositories/i_task_repository.dart';
import 'package:http/http.dart' as networking;

@singleton 
class TaskRepositoryImpl implements ITaskRepository{
  final String baseUrl = "run.mocky.io";
  
  @override
  Future<List<TaskModel>?> getAllTask() async{
    var url = Uri.https(baseUrl, "/v3/6bb86bda-08f1-4d7d-99c6-a975bc1201e0");
    final response = await networking.get(url);
    final responseBody = GetTaskDTO.fromJson(jsonDecode(utf8.decode(response.bodyBytes)) as Map<String,dynamic>);
    return responseBody.tasks;
  }
}