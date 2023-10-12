import 'dart:io';

void main() {
  print("Enter the number of rows pattern should continue: ");

  int len = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < len; i++) {
    for (var j = 0; j < i + 1; j++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}
