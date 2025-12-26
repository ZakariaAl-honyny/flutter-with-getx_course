import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/state_mangement/controller/get_builder_controller.dart';

class GetBuilderPage extends StatelessWidget {
  GetBuilderPage({super.key});

  // final GetBuilderController getBuilderController = Get.put(
  //   GetBuilderController(),
  //   permanent: true,
  // );

  // restart values when you go out this page if fenix: true else clear from memory
  // final void getBuilderController = Get.lazyPut(
  //   () => GetBuilderController(),
  //   fenix: true,
  // );

  // dependendy injection from binding class
  final GetBuilderController getBuilderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Get builder state mangement'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<GetBuilderController>(
              // init:GetBuilderController(), // initlize one time for evry controller
              builder: (controller) {
                debugPrint('rebuild count1');
                return Text('${controller.count1}');
              },
            ),
            GetBuilder<GetBuilderController>(
              builder: (controller) {
                debugPrint('rebuild count2');
                return Text('${controller.count2}');
              },
            ),
            GetBuilder<GetBuilderController>(
              builder: (controller) {
                debugPrint('rebuild sum');
                return Text('${controller.sum}');
              },
            ),
            TextButton(
              onPressed: () {
                // debugPrint('rebuild add button count1');
                getBuilderController.incrementCounter1();
              },
              child: Text('Add Count1'),
            ),

            TextButton(
              onPressed: () {
                // debugPrint('rebuild add button count2');
                getBuilderController.incrementCounter2();
              },
              child: Text('Add Count2'),
            ),
          ],
        ),
      ),
    );
  }
}
