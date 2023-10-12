import 'dart:io';

void main() {
  int? num;
  print("Enter number: ");
  num = int.tryParse(stdin.readLineSync()!);
  if (num != null) {
    if (num % 2 == 0) {
      print("Even");
    } else if (num % 2 != 0) {
      print("Odd");
    } else {
      print("Invalid input");
    }
  }
}
