import 'dart:io';
import 'dart:math';

void main() {
  int tries = 5;
  int randn = Random().nextInt(101);

  for (var i = 0; i < tries; i++) {
    print("");
    print("Guess the number: ");

    int guessed_num = int.parse(stdin.readLineSync()!);

    if (guessed_num == randn) {
      print("Congratulations you won! You guessed the number right!");
      exit(1);
    } else if (guessed_num < randn) {
      print(
          "No, the actual number is greater than this. You have ${5 - i - 1} chances left");
    } else if (guessed_num > randn) {
      print(
          "No, the actual number is smaller than this. You have ${5 - i - 1} chances left");
    }

    print("");
    print(
        "Ah! You lost. You have exhausted all your chances! The number was ${randn}");
  }
}
