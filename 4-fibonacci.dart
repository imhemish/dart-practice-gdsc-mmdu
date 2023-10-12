import 'dart:io';

int fibonacci(int n) {
  // The first two numbers in the sequence are 0 and 1
  if (n == 0 || n == 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main() {
  print("Enter number of terms: ");
  int? num = int.tryParse(stdin.readLineSync()!);
  print("");
  if (num != null) {
    for (int i = 0; i < num; i++) {
      print(fibonacci(i));
    }
  } else {
    print("Invalid");
  }
}
