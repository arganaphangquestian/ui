import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/base/locator.dart';
import 'package:ui/tab/screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: CustomScreen(),
    );
  }
}
