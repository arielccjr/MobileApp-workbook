import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Firebase Auth Demo')),
      body: ListenableBuilder(
        listenable: authAppState,
        builder: (context, child) {
          return authAppState.loggedIn
              ? ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/profile'),
                child: const Text('Profile'),
              )
              : ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/sign-in'),
                child: const Text('Sign In'),
              );
        },
      ),
    );
  }
}
