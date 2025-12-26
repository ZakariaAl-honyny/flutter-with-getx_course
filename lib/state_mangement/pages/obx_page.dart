import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/state_mangement/controller/obx_controller.dart';

class ObxPage extends StatelessWidget {
  ObxPage({super.key});

  // final ObxController controller = Get.put(ObxController(), permanent: true);

  // final c = Get.lazyPut(() => ObxController(), fenix: true);
  final ObxController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Obx state mangement'),
      ),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  controller.increment();
                },
                icon: Icon(Icons.add),
              ),
              Text('${controller.counter.value}'),
              IconButton(
                onPressed: () {
                  controller.decrement();
                },
                icon: Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// getbuilder update rebuild
// getx       stream
// obx        stream
