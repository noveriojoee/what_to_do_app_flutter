import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:what_to_do_app/Models/task_model.dart';
part 'get_all_task_dto.freezed.dart';
part 'get_all_task_dto.g.dart';

@freezed
class GetTaskDTO with _$GetTaskDTO {
  const factory GetTaskDTO({
    required final List<TaskModel> tasks,
  }) = _GetTaskDTO;

  factory GetTaskDTO.fromJson(Map<String, dynamic> json) =>
      _$GetTaskDTOFromJson(json);
}
