import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/state_mangement/controller/get_x_controller.dart';

class GetxPage extends StatelessWidget {
  GetxPage({super.key});

  // final GetXController getXController = Get.put(
  //   GetXController(),
  //   permanent: true,
  // ); // dependency injection

  // final void getXController = Get.lazyPut(
  //   () => GetXController(),
  //   fenix: true,
  // ); // dependency injection

  final GetXController getXController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('GetX state mangement'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<GetXController>(
              // you don't need init when ou use dependency injection
              // init: GetXController(), // initlize one time for every controller
              builder: (controller) {
                debugPrint('rebuild count1');
                return Text('${controller.count1}');
              },
            ),
            GetX<GetXController>(
              builder: (controller) {
                debugPrint('rebuild count2');
                return Text('${controller.count2}');
              },
            ),
            GetX<GetXController>(
              builder: (controller) {
                debugPrint('rebuild sum');
                return Text('${controller.sum}');
              },
            ),
            // Error you can't use GetX for rebuild item doesn't have value for rebuild
            // GetX<GetXController>(
            //   builder: (controller) {
            //     return TextButton(
            //       onPressed: () {
            //         debugPrint('rebuild add button count1');
            //         controller.incrementCounter1();
            //       },
            //       child: Text('Add Count1'),
            //     );
            //   },
            // ),
            TextButton(
              onPressed: () {
                getXController.incrementCounter1();
              },
              child: Text('Add Count1'),
            ),
            TextButton(
              onPressed: () {
                getXController.incrementCounter2();
              },
              child: Text('Add Count2'),
            ),
          ],
        ),
      ),
    );
  }
}
