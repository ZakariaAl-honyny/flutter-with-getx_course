import 'package:get/get.dart';

// stream
// class GetXController extends GetxController {
//   RxInt counter = 0.obs;

//   void increment() {
//     counter.value++;
//   }

//   void decrement() {
//     counter.value--;
//   }
// }

class GetXController extends GetxController {
  RxInt count1 = 0.obs;
  RxInt count2 = 0.obs;

  void incrementCounter1() {
    count1.value++;
  }

  void incrementCounter2() {
    count2.value++;
  }

  int get sum => count1.value + count2.value;
}
