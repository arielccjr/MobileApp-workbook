import 'package:flutter/material.dart';

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
              onPressed: () {},
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
