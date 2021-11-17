//Ask the user for a number and determine whether the number is prime or not.
import 'dart:io';

void main(List<String> args) {
  print('Hi there, type your name: ');
  String name = stdin.readLineSync().toString();
  print('$name, type a number: ');
  int number = int.parse(stdin.readLineSync().toString());
  isPrime(number);
}

final isPrime = (int number) {
  List<int> numbers = [];

  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      numbers.add(i);
    }
  }

  numbers.length == 2
      ? print("This $number is prime.")
      : print("This $number not is prime.");
};
