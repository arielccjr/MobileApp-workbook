import 'package:test/test.dart';
import 'package:week_10_unit_testing/models/user.dart';

main() {
  group('User Tests', () {
    late User user;

    setUp(() {
      user = const User(name: 'Jane Doe', email: 'jdoe@example.com');
    });

    test('User should have a name', () {
      expect(user.name, 'Jane Doe');
    });

    test('User should have an email', () {
      expect(user.email, 'jdoe@example.com');
    });
  });
}
