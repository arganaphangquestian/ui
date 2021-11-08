import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  await dotenv.load(fileName: ".env");
  getIt.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: dotenv.env['API_URL'] ?? '',
        connectTimeout: 5000,
        receiveTimeout: 3000,
      ),
    ),
  );
}
