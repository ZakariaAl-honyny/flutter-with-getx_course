import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Page Two'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {},
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to home page'),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('go to page one'),
            ),
            MaterialButton(
              onPressed: () {},
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
