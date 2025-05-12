import 'package:flutter/material.dart';
import 'package:week_08_state_management/models/user.dart';

class UserNotifier extends InheritedNotifier<User> {
  const UserNotifier({super.key, required User user, required super.child})
    : super(notifier: user);

  static UserNotifier? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserNotifier>();
  }

  static User of(BuildContext context) {
    final UserNotifier? result = maybeOf(context);
    if (result == null || result.notifier == null) {
      throw StateError('No UserInhertiedNotifier in the context');
    }

    return result.notifier!;
  }
}
