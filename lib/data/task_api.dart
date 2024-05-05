import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:todo_list/domain/task_model.dart';

part 'task_api.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class TaskApi {
  factory TaskApi(Dio dio) = _TaskApi;

  @GET("/todos")
  Future<List<Task>> getTasks();
}
