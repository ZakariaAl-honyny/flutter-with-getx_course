import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Page One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                // Navigator.of(context).pushNamed('/');
                Get.toNamed('/');
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to home page'),
            ),
            MaterialButton(
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/PageOne');
                Get.offAndToNamed('/PageOne');
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to page one'),
            ),
            MaterialButton(
              onPressed: () {
                // Navigator.of(
                //   context,
                // ).pushNamedAndRemoveUntil('/PageTwo', (route) => false);
                Get.offAllNamed('/PageTwo');
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to page two'),
            ),
          ],
        ),
      ),
    );
  }
}
