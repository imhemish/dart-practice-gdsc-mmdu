import 'dart:io';

String leap(int year) {
  if ((year % 4 == 0) & (year % 100 != 0)) {
    return "Yes, it is leap year";
  } else {
    return "No, it is not a leap year";
  }
}

void main() {
  print("Enter year: ");
  int? year = int.tryParse(stdin.readLineSync()!);
  if (year != null) {
    print(leap(year));
  } else {
    print("Invalid");
  }
}
