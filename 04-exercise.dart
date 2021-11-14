// Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
import 'dart:io';

void main(List<String> args) {
  print('Hi, please type a number: ');
  int number = int.parse(stdin.readLineSync().toString());

  List<int> divisors = [];

  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      divisors.add(i);
    }
  }

  print('The divisors of $number are: $divisors');
}
