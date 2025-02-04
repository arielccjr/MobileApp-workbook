import 'package:flutter/material.dart';
import 'package:week_05_navigation_demo/pages/page_one.dart';
import 'package:week_05_navigation_demo/pages/page_two.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String returnMessage = '';

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
              onPressed: () async {
                final message = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PageOne(),
                  ),
                );

                setState(() {
                  returnMessage = message;
                });
              },
              child: const Text('Page One'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PageTwo(),
                  ),
                );
              },
              child: const Text('Page Two'),
            ),
            Text('Return msg is: $returnMessage'),
          ],
        ),
      ),
    );
  }
}
