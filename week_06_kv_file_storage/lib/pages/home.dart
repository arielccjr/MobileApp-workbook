import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Storage Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                // final message = await Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => PageOne(),
                //   ),
                // );
              },
              child: const Text('Shared Prefs'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => PageTwo(),
                //   ),
                // );
              },
              child: const Text('File Storage'),
            ),
          ],
        ),
      ),
    );
  }
}
