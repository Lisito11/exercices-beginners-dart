// Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.
import 'dart:io';

void main(List<String> args) {
  print('Your name is: ');
  String name = stdin.readLineSync().toString();

  print('Now $name, tell me your age: ');
  String age = stdin.readLineSync().toString();

  int yearsToHundred = 100 - int.parse(age);

  print('Ok $name, You have $yearsToHundred years to be 100.');
}
