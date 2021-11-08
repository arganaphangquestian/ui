import 'package:get/get.dart';
import 'package:ui/tab/network.dart';

class CustomController extends GetxController {
  var selectedPage = 0.obs;

  @override
  void onInit() {
    TodoNetwork.getTodos();
    super.onInit();
  }

  void changeSelectedPage(int selected) {
    selectedPage.value = selected;
    update();
  }
}
