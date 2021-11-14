// Ask the user for a string and print out whether this string is a palindrome or not.

import 'dart:io';

void main(List<String> args) {
  print('Hi, type something: ');
  List wordList = stdin.readLineSync().toString().split('');
  var wordInverted = wordList.reversed.join('');
  var word = wordList.join('');

  if (word == wordInverted) {
    print('This $word is palindrome.');
  } else {
    print('This $word is not palindrome.');
  }
}
