import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/tab/screen.dart';

void main() {
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
