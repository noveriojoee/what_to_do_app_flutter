import 'package:freezed_annotation/freezed_annotation.dart';
part 'task_model.freezed.dart';
part 'task_model.g.dart';

@unfreezed
class TaskModel with _$TaskModel {
  factory TaskModel({
    required final String title,
    required final String description,
    @Default(false) bool isDone,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
