import 'dart:io';

int factorial(int n) {
  if (n == 1 || n == 0) {
    return 1;
  } else {
    return factorial(n - 1) * n;
  }
}

void main() {
  print("Enter number: ");
  int? num = int.tryParse(stdin.readLineSync()!);
  if (num != null) {
    print(factorial(num));
  } else {
    print("Invalid");
  }
}
