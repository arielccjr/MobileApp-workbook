import 'dart:io';
import 'dart:core';

// 1. Tally up total change
double getTotal(int pennies, int nickels, int dimes, int quarters, int loonies, int twoonies) {
  if( pennies < 0 || nickels < 0 || dimes < 0 || quarters < 0 || loonies < 0 || twoonies < 0) {
    throw ArgumentError("All values must be positive."); // Throw error for negative input [cite: 3]
  }

  double total = 0.0;
  total += pennies * 0.01;
  total += nickels * 0.05;
  total += dimes * 0.10;
  total += quarters * 0.25;
  total += loonies * 1.00;
  total += twoonies * 2.00;
  return total;
}

void main() {
  // 1. Tally up total change
  try {
    stdout.write("Enter number of pennies: ");
    int pennies = int.parse(stdin.readLineSync()!);
    stdout.write("Enter number of nickels: ");
    int nickels = int.parse(stdin.readLineSync()!);
    stdout.write("Enter number of dimes: ");
    int dimes = int.parse(stdin.readLineSync()!);
    stdout.write("Enter number of quarters: ");
    int quarters = int.parse(stdin.readLineSync()!);
    stdout.write("Enter number of loonies: ");
    int loonies = int.parse(stdin.readLineSync()!);
    stdout.write("Enter number of twoonies: ");
    int twoonies = int.parse(stdin.readLineSync()!);

    double total = getTotal(pennies, nickels, dimes, quarters, loonies, twoonies);
    print("Total amount \$${total.toStringAsFixed(2)}");
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}