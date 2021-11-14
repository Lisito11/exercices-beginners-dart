// Make a two-player Rock-Paper-Scissors game against computer.

// Ask for player’s input, compare them, print out a message to the winner.

import 'dart:io';
import 'dart:math';

enum Plays { rock, paper, scissors }

void main(List<String> args) {
  print('Hi there, type your name: ');
  String namePlayer = stdin.readLineSync().toString();

  bool play = true;
  while (play) {
    //The player chooses his movement.
    print('Hey $namePlayer Choose the number of your movement: ');
    print('1.Rock\n2.Paper\n3.Scissors');
    var move = stdin.readLineSync().toString();
    Plays movePlayer = Plays.values[int.parse(move) - 1];

    // The pc chooses its movement.
    var numRandom = new Random();
    Plays movePc = Plays.values[numRandom.nextInt(3)];

    if (movePlayer == movePc) {
      print('We have a tie!');
      play = true;
      continue;
    }

    switch (movePlayer) {
      case Plays.rock:
        if (movePc == Plays.scissors) {
          print('You chose Rock y The PC Scissors');
          print('Congratulations $namePlayer you win!');
        } else {
          print('You chose Rock y The PC Paper');
          print('Sorry The PC win :c');
        }
        break;
      case Plays.paper:
        if (movePc == Plays.rock) {
          print('You chose Paper y The PC Rock');
          print('Congratulations $namePlayer you win!');
        } else {
          print('You chose Paper y The PC Scissors');
          print('Sorry The PC win :c');
        }
        break;
      case Plays.scissors:
        if (movePc == Plays.paper) {
          print('You chose Scissors y The PC Paper');
          print('Congratulations $namePlayer you win!');
        } else {
          print('You chose Scissors y The PC Rock');
          print('Sorry The PC win :c');
        }
        break;
      default:
    }
    print('Do you want play again? (Y,N)');
    String repeat = stdin.readLineSync().toString().toLowerCase();
    repeat == 'y' ? play = true : play = false;
  }
}
