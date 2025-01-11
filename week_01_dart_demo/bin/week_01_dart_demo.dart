import 'dart:io';
// import 'package:week_01_dart_demo/week_01_dart_demo.dart';

void main(List<String> arguments) {
  // Initialized variables do not require type
  // const name = 'Sally';
  // final age = calculate();

  String name;
  int age;

  stdout.write('Enter your name: ');
  name = stdin.readLineSync()!;

  stdout.write('Enter your age: ');
  age = int.parse(stdin.readLineSync()!);

  stdout.writeln('Hello $name, it looks like you are $age years old.');
}
