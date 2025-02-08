import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {
  const SubPage({super.key});

  static const routeName = 'sub_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Main Sub Page'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Sub 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Sub 2'),
            ),
          ],
        ),
      ),
    );
  }
}
