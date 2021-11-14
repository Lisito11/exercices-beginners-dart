// Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.

import 'dart:io';

void main(List<String> args) {
  print('Hi, please enter a number: ');
  String number = stdin.readLineSync().toString();

  if (int.parse(number) % 2 == 0) {
    print('Your number ( $number ) is even.');
  } else {
    print('Your number ( $number ) is odd.');
  }
}
