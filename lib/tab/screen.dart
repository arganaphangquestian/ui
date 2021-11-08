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
            child: Obx(
              () => ListView.builder(
                itemBuilder: (ctx, idx) {
                  return Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Obx(
                        () => Text(
                          '${c.todos[idx].title} - ${c.todos[idx].completed ? "Completed" : "Incompleted"}',
                        ),
                      ),
                    ),
                  );
                },
                itemCount: c.todos.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
