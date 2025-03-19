import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:week_10_unit_testing/models/user.dart';
import 'package:week_10_unit_testing/widgets/user_widget.dart';

main() {
  group('User Widget Tests', () {
    late User user;
    const name = 'Jane Doe';
    const email = 'jdoe@example.com';
    late Widget app;

    setUp(() {
      user = const User(name: name, email: email);
      app = MaterialApp(home: UserWidget(user: user));
    });

    testWidgets('UserWidget displays name and email', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(app);

      final nameFinder = find.text('Name: $name');
      final emailFinder = find.text('Mail: $email');
      final fabFinder = find.byType(FloatingActionButton);

      expect(nameFinder, findsNothing);
      expect(emailFinder, findsNothing);
      // expect(fabFinder, findsOneWidget);

      await tester.tap(fabFinder);

      await tester.pump(const Duration(seconds: 1));

      expect(nameFinder, findsOneWidget);
      expect(emailFinder, findsOneWidget);
    });
  });
}
