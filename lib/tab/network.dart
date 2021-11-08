import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ui/base/locator.dart';
import 'package:ui/tab/entity/todo.dart';

class TodoNetwork {
  static Future<List<Todo>> getTodos(String type, int page) async {
    try {
      var limit = int.tryParse(dotenv.env["APP_LIMIT"] ?? '10') ?? 10;
      var data = await getIt.get<Dio>().get(
          '/todos?skip=${page * limit + 1}*&limit=${dotenv.env["APP_LIMIT"]}&type=$type');
      List<Todo> results = (data.data as List).map<Todo>((todo) {
        return Todo.fromJson(todo);
      }).toList();
      return results;
    } catch (e) {
      rethrow;
    }
  }
}
