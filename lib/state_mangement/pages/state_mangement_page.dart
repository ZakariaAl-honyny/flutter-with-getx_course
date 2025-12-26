import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/state_mangement/pages/get_builder_page.dart';
import 'package:getx_course/state_mangement/pages/getx_page.dart';
import 'package:getx_course/state_mangement/pages/obx_page.dart';
import 'package:getx_course/state_mangement/pages/show_controllers.dart';
import 'package:getx_course/state_mangement/utilities/get_builder_bindings.dart';
import 'package:getx_course/state_mangement/utilities/getx_bindings.dart';
import 'package:getx_course/state_mangement/utilities/obx_bindings.dart';

class StateMangementPage extends StatelessWidget {
  const StateMangementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('State Mangement Pages'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                // Navigator.of(
                //   context,
                // ).push(MaterialPageRoute(builder: (context) => GetBuilderPage()));
                Get.to(
                  () => GetBuilderPage(),
                ); // binding: GetBuilderBindings());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to Get Builder Page'),
            ),
            MaterialButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => GetxPage()),
                // );
                Get.to(() => GetxPage(), binding: GetxBindings());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to Getx Page'),
            ),
            MaterialButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => ObxPage())
                // );
                Get.to(() => ObxPage(), binding: ObxBindings());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to Obx Page'),
            ),
            MaterialButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => ShowControllers()),
                // );
                Get.to(() => ShowControllers(), binding: ObxBindings());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Show Controllers values'),
            ),
            MaterialButton(
              onPressed: () {
                // Navigator.of(context).maybePop();
                Get.back();
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go back'),
            ),
          ],
        ),
      ),
    );
  }
}
