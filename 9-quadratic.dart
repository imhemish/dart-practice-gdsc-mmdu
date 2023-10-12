import 'dart:io';
import 'dart:math';

void main() {
  print(
      "Enter the coefficients of x^2, x and constant term, separated by space: ");

  String? input = stdin.readLineSync()!;
  List<String> coefficients = input.split(" ");

  var coefficients_ints = coefficients.map((e) => int.tryParse(e)).toList();
  coefficients_ints.removeWhere((element) => element == null);

  if (coefficients_ints.length != 3) {
    print("Invalid input");
    exit(1);
  }

  var a = coefficients_ints[0]!;
  var b = coefficients_ints[1]!;
  var c = coefficients_ints[2]!;

  int D = (pow(b, 2)).toInt() - (4 * a * c);

  double sol1 = (-b + sqrt(D)) / (2 * a);
  double sol2 = (-b - sqrt(D)) / (2 * a);

  print("The solutions are ${sol1} and ${sol2}");
}
