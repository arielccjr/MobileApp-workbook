import 'package:flutter/material.dart';
import 'package:week_05_navigation_demo/pages/sub_pages/sub.dart';

class SubManager extends StatefulWidget {
  const SubManager({super.key});

  @override
  State<SubManager> createState() => _SubManagerState();
}

class _SubManagerState extends State<SubManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub Navigation Page'),
      ),
      body: Navigator(
        initialRoute: SubPage.routeName,
        onGenerateRoute: (settings) {
          Widget page = const Text('DEFAULT PAGE');

          switch (settings.name) {
            case SubPage.routeName:
              page = SubPage();
              break;
          }

          return MaterialPageRoute(
              builder: (context) => page, settings: settings);
        },
      ),
    );
  }
}
