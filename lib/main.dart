import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/view/task_edit_view.dart';

import 'view/task_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => TaskListView()),
        GetPage(
          name: '/task_edit',
          page: () => TaskEditView(),
        ),
      ],
    );
  }
}
