import 'dart:io';

double celsius_to_fahrenheit(double degrees) {
  return (9 / 5 * (degrees)) + 32;
}

double fahrenheit_to_celsius(double degrees) {
  return (degrees - 32) * 5 / 9;
}

void main() {
  print("Enter source unit (C or F): ");
  String source_unit = stdin.readLineSync()!;
  print("Enter degrees: ");
  double degrees = double.parse(stdin.readLineSync()!);
  if (source_unit.toLowerCase().contains("c")) {
    var temp = celsius_to_fahrenheit(degrees);
    print("The temperature in Fahrenheit is ${temp}");
  } else if (source_unit.contains("f")) {
    var temp = fahrenheit_to_celsius(degrees);
    print("The temperature in Celsius is ${temp}");
  } else {
    print("Invalid input");
  }
}
