import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class GetBuilderController extends GetxController {
//   int counter = 0;

//   void increment() {
//     counter++;
//     update();
//   }

//   void decrement() {
//     counter--;
//     update();
//   }
// }

class GetBuilderController extends GetxController {
  int count1 = 0;
  int count2 = 0;

  void incrementCounter1() {
    count1++;
    update();
  }

  void incrementCounter2() {
    count2++;
    update();
  }

  int get sum => count1 + count2;

  @override
  void onInit() {
    debugPrint('init GetBuilderController');
    debugPrint('Get Data');
    super.onInit();
  }

  @override
  void onReady() {
    debugPrint('Ready GetBuilderController');
    super.onReady();
  }

  @override
  void onClose() {
    debugPrint('Close GetBuilderController');
    super.onClose();
  }
}
