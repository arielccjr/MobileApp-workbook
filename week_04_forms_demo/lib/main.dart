import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mobile UI Form'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: UserSignUpForm(),
        ),
      ),
    );
  }
}

class UserSignUpForm extends StatelessWidget {
  const UserSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Text('New User Form'),
          TextFormField(
            validator: (value) => value == null || value.isEmpty
                ? 'Username cannot be empty'
                : null,
            decoration: InputDecoration(
              label: Text('Username'),
            ),
          ),
          TextFormField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              label: Text('Password'),
            ),
          ),
          // You can use SizedBox for layout
          // SizedBox(
          //   height: 16.0,
          // ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
            ),
            onPressed: () {
              // Get the text field value ... ?
            },
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
