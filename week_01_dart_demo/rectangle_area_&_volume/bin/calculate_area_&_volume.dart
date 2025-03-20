import 'dart:io';

// 4. Calculate area and volume of a rectangle
double calculateArea(double length, double width) {
  if (length < 0 || width < 0) {
    throw ArgumentError("All values must be positive.");
  }
  return length * width;
}

double calculateVolume(double length, double width, double height) {
  if (length < 0 || width < 0 || height < 0) {
    throw ArgumentError("All values must be positive.");
  }
  return length * width * height;
}

try {
  stdout.write("Enter length: ");
  double length = double.parse(stdin.readLineSync()!);
  stdout.write("Enter width: ");
  double width = double.parse(stdin.readLineSync()!);
  stdout.write("Enter height: ");
  double height = double.parse(stdin.readLineSync()!);

  double area = calculateArea(length, width);
  double volume = calculateVolume(length, width, height);

  print("Surface area: ${area.toStringAsFixed()}");
  print("Volume: ${volume.toStringAsFixed(2)}");
} catch (e) {
  print("Error: ${e.toString()}");
}