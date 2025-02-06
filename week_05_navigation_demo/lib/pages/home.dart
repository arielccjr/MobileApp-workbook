import 'package:flutter/material.dart';
import 'package:week_05_navigation_demo/pages/page_one.dart';
import 'package:week_05_navigation_demo/pages/page_two.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static const routeName = 'home';

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
                final message = await Navigator.of(context).pushNamed(
                    PageOne.routeName,
                    arguments: 'A special message');

                setState(() {
                  returnMessage = message as String;
                });
              },
              child: const Text('Page One'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(PageTwo.routeName);
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
