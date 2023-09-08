import 'package:get/get.dart';

class CountGetXController extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    count(count.value + 1);
  }

  void decrement() {
    count(count.value - 1);
  }
}
