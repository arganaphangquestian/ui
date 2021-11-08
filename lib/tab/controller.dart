import 'package:get/get.dart';
import 'package:ui/tab/entity/todo.dart';
import 'package:ui/tab/network.dart';
import 'package:ui/tab/utils.dart';

class CustomController extends GetxController {
  var selectedPage = 0.obs;
  var todos = <Todo>[].obs;
  var page = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAPI();
  }

  void changeSelectedPage(int selected) {
    selectedPage.value = selected;
    update();
    getAPI();
    page.value = 0;
    update();
  }

  void getAPI() {
    TodoNetwork.getTodos(words[selectedPage.value], page.value).then((value) {
      todos.clear();
      todos.addAll(value);
      update();
    });
  }
}
