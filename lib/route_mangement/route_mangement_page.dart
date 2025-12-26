import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/route_mangement/page_one.dart';
import 'package:getx_course/route_mangement/page_two.dart';

class RouteMangementPage extends StatelessWidget {
  const RouteMangementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Route Mangement Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                // Navigator.of(
                //   context,
                // ).push(MaterialPageRoute(builder: (context) => RouteMangementPage()));
                Get.to(() => RouteMangementPage());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to Route Mangement Page '),
            ),
            MaterialButton(
              onPressed: () {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(builder: (context) => PageOne()),
                // );
                Get.off(() => PageOne());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to page one'),
            ),
            MaterialButton(
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(builder: (context) => PageTwo()),(route) => false,
                // );
                Get.offAll(() => PageTwo());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to page two'),
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
