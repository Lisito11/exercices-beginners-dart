// Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.

import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  print('Hi there, type your name: ');
  String name = stdin.readLineSync().toString();
  print('The AI has chosen a random number between 1 and 100. Try to guess: ');
  int numberByAI = new Random().nextInt(101);
  int plays = 0;
  while (true) {
    int numberByPlayer = int.parse(stdin.readLineSync().toString());
    plays++;
    if (numberByPlayer == numberByAI) {
      print('Congratulations $name you win at $plays tries.');
      break;
    } else if (numberByPlayer < numberByAI) {
      print('Try again, your number is less than AI');
    } else if (numberByPlayer > numberByAI) {
      print('Try again, your number is greater than AI');
    }
  }
}
