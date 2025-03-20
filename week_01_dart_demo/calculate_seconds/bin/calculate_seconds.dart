import 'dart:io';

// 2. Calculate seconds.
int calculateSeconds(int hours, int minutes, int seconds) {
  if (hours < 0 || minutes < 0 || seconds < 0) {
    throw ArgumentError("All values must be positive.");
  }

  int totalSeconds = 0;
  totalSeconds += hours * 3600;
  totalSeconds += minutes * 60;
  totalSeconds += seconds;
  return totalSeconds;
}

try {
  stdout.write("Enter hours: ");
  int hours = int.parse(stdin.readLineSync()!);
  stdout.write("Enter minutes: ");
  int minutes = int.parse(stdin.readLineSync()!);
  stdout.write("Enter seconds: ");
  int seconds = int.parse(stdin.readLineSync()!);

  int totalSeconds = calculateSeconds(hours, minutes, seconds);
  print("Total seconds: $totalSeconds");
} catch (e) {
  print("Error: ${e.toString()}");
}