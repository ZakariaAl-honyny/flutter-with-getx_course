import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/state_mangement/pages/state_mangement_page.dart';
import 'package:getx_course/state_mangement/pages/obx_page.dart';

class AllPages extends StatelessWidget {
  const AllPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('All pages'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                // Navigator.of(context).pushNamed('/RouteMangementPage');
                Get.toNamed('/RouteMangementPage');
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to route mangement pages'),
            ),
            MaterialButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => StateMangementPage()),
                // );
                Get.to(() => StateMangementPage());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to state mangement pages'),
            ),
            MaterialButton(
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(builder: (context) => ObxPage()),(route) => false,
                // );
                Get.offAll(() => ObxPage());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to Obx Page'),
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
