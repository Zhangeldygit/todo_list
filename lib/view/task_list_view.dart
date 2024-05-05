import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/view/task_edit_view.dart';

import '../controller/task_controller.dart';

class TaskListView extends StatelessWidget {
  TaskListView({super.key});
  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: taskController.tasks.length,
          itemBuilder: (context, index) {
            final task = taskController.tasks[index];
            return ListTile(
              title: Text(task.title),
              subtitle: Text(task.completed ? 'Completed' : 'Not Completed'),
              onTap: () {
                Get.to(() => TaskEditView(task: task));
              },
            );
          },
        ),
      ),
    );
  }
}
