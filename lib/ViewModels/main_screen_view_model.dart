import 'package:injectable/injectable.dart';
import 'package:what_to_do_app/Base/base_view_model.dart';
import 'package:what_to_do_app/Models/task_model.dart';
import 'package:what_to_do_app/Repositories/i_task_repository.dart';
import 'package:what_to_do_app/Repositories/impl/task_repository_impl.dart';
import 'package:what_to_do_app/Setup.dart';

@injectable
class MainScreenViewModel extends BaseViewModel {
  List<TaskModel>? _tasksData;

  final ITaskRepository _taskRepository = getIt<TaskRepositoryImpl>();

  List<TaskModel> get taskData => _tasksData ?? [];  
  int get taskDataCount => _tasksData?.length ?? 0;

  @override
  void init() async{
    _tasksData = await _taskRepository.getAllTask();
    notifyListeners();
  }
  
  Future<void> onAddTaskClicked(String textValue) async {
    final data = TaskModel(description: textValue,title: textValue, isDone: false);
    _tasksData?.add(data);
    notifyListeners();
  }
}
