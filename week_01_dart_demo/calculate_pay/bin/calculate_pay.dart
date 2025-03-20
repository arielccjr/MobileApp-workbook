import 'dart:io';
import 'dart:core';

// 3. Calculate pay.
double calculatePay(double hours, double payRate) {
  if (hours < 0 || payRate < 0) {
    throw ArgumentError("All values must be positive.");
  }

  double grossPay = 0.0;

  if (hours <= 40) {
    grossPay = hours * payRate;
  } else if (hours <= 50) {
    grossPay = 40 * payRate;
    grossPay += (hours - 40) * payRate * 1.5; // Time and a half [cite: 8]
  } else {
    grossPay = 40 * payRate;
    grossPay += 10 * payRate * 1.5;
    grossPay += (hours - 50) * payRate * 2.0;
  }

  return grossPay;
}

try {
  stdout.write("Enter hours worked: ");
  double hours = double.parse(stdin.readLineSync()!);
  stdout.write("Enter pay rate: ");
  double payRate = double.parse(stdin.readLineSync()!);

  double grossPay = calculatePay(hours, payRate);
  print("Gross pay: \$${grossPay.toStringAsFixed(2)}");
} catch (e) {
  print("Error: ${e.toString()}");
}
