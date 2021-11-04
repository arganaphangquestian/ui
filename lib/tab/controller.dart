import 'package:get/get.dart';

class CustomController extends GetxController {
  var selectedPage = 0.obs;

  void changeSelectedPage(int selected) {
    selectedPage.value = selected;
    update();
  }
}
