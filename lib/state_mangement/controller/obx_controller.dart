import 'package:get/get.dart';

// stream
class ObxController extends GetxController {
  RxInt counter = 0.obs;

  void increment() {
    counter.value++;
  }

  void decrement() {
    counter.value--;
  }
}
