import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() async {
  await dotenv.load(fileName: ".env");
  getIt.registerLazySingleton<Dio>(() => setupDio());
}

Dio setupDio() {
  var dio = Dio();
  dio.options = BaseOptions(
    baseUrl: dotenv.env['API_URL'] ?? '',
  );
  return dio;
}
