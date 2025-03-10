import 'package:flutter/material.dart';

class TransformsPage extends StatelessWidget {
  const TransformsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transforms Page')),
      body: Center(child: Column(children: [const Text('Transform Text')])),
    );
  }
}
