import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/state_mangement/controller/get_builder_controller.dart';
import 'package:getx_course/state_mangement/controller/get_x_controller.dart';
import 'package:getx_course/state_mangement/controller/obx_controller.dart';

class ShowControllers extends StatelessWidget {
  ShowControllers({super.key});

  final ObxController obxController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('search controllers values')),
      body: Center(
        child: Column(
          children: [
            GetBuilder<GetBuilderController>(
              init: GetBuilderController(),
              builder: (controller) => Text(
                'Get Builder[ count1: ${controller.count1},  count2: ${controller.count2}, sum: ${controller.sum}] ',
              ),
            ),
            GetX<GetXController>(
              init: GetXController(),
              builder: (controller) => Text(
                'Get x[ count1: ${controller.count1},  count2: ${controller.count2}, sum: ${controller.sum}] ',
              ),
            ),
            Obx(() => Text('Obx [ counter: ${obxController.counter} ]')),
          ],
        ),
      ),
    );
  }
}
