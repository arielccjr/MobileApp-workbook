import 'dart:io';

/// Returns a [String] from the user
///
/// Displays the passed in [message] as the prompt
/// to the user.
String prompt(String message) {
  stdout.write(message);
  return stdin.readLineSync()!;
}

// TODO: create the promptInt function

int calculate() {
  return 6 * 7;
}
