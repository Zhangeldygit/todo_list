import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/controller/task_controller.dart';

import '../domain/task_model.dart';

class TaskEditView extends StatelessWidget {
  final Task? task;
  final TaskController taskController = Get.find();

  TaskEditView({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Task'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(task?.title ?? ''),
            Text(task?.completed ?? false ? 'Completed' : 'Not Completed'),
            ElevatedButton(
              onPressed: () {
                taskController.toggleTaskStatus(task!);
                Get.back(result: taskController.tasks);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
