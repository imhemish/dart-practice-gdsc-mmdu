import 'dart:io';

void main() {
  int n1, n2;
  String operation;
  dynamic result;

  mainloop:
  while (true) {
    stdout.write('Enter first number : ');
    n1 = int.parse(stdin.readLineSync()!);

    stdout.write('Enter second number : ');
    n2 = int.parse(stdin.readLineSync()!);

    print("Enter the operation to perform (+,-,*,/): ");

    operation = stdin.readLineSync()!;

    switch (operation) {
      case "+":
        result = n1 + n2;
        break;
      case "-":
        result = n1 - n2;
        break;
      case "*":
        result = n1 * n2;
        break;
      case "/":
        if (n2 == 0) {
          print("Division by zero is not possible");
          continue mainloop;
        } else {
          result = n1 / n2;
        }
        break;
    }
    print("The result is ${result} \nobject");
  }
}
