import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/tab/controller.dart';
import 'package:ui/tab/utils.dart';
import 'package:ui/tab/widgets/tab.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CustomController c = Get.put(CustomController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Obx(
          () => Text(
            pagesList[c.selectedPage.value].title,
          ),
        ),
      ),
      body: Column(
        children: [
          Obx(
            () => CustomTab(
              lists: pagesList,
              onChangeSelected: (idx) {
                c.changeSelectedPage(idx);
              },
              selected: c.selectedPage.value,
            ),
          ),
          Expanded(
            child: Center(
              child: Obx(
                () => Text(
                  "Hello Cok = ${pagesList[c.selectedPage.value].title}",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
