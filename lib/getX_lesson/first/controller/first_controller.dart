import 'package:get/get.dart';

class FirstViewController extends GetxController {
  Rx<int> san = 0.obs;
  RxInt number = 0.obs;

  void koshuu() {
    san.value = san.value + 1;
  }

  void kemitu() {
    san.value = san.value - 1;
  }
}
