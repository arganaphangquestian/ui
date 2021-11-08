import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ui/base/locator.dart';

class TodoNetwork {
  static getTodos() async {
    var data = await getIt.get<Dio>().get('/todos');
    debugPrint(data.data);
  }
}
