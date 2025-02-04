import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop<String>('Return from appBar');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Page One'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Page one body'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop<String>('Return from button');
              },
              child: const Text('Return Home'),
            ),
          ],
        ),
      ),
    );
  }
}
