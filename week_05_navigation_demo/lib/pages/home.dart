import 'package:flutter/material.dart';
import 'package:week_05_navigation_demo/pages/page_one.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PageOne(),
                  ),
                );
              },
              child: const Text('Page One'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Page Two'),
            ),
          ],
        ),
      ),
    );
  }
}
