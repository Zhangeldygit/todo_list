import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:todo_list/data/task_api.dart';

import '../domain/task_model.dart';

class TaskController extends GetxController {
  final TaskApi _api = TaskApi(Dio());

  final tasks = <Task>[].obs;

  final bool isCompleted = false;

  @override
  void onInit() {
    super.onInit();
    fetchTasks();
  }

  Future<void> fetchTasks() async {
    try {
      final result = await _api.getTasks();
      tasks.assignAll(result);
    } catch (e) {
      print('Error: $e');
    }
  }

  void toggleTaskStatus(Task task) {
    final index = tasks.indexWhere((element) => element.id == task.id);
    tasks[index] = task.copyWith(completed: !task.completed);
  }
}
