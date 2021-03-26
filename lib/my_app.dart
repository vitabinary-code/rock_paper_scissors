import 'dart:io';

import 'dart:math';

String selection;
Random rand;
int move;
dynamic getPlayerMove() {
  ///Get player move via keyboard input if the play does not enter a valid move return 'Quit' so that the main game loop know to end the game.
  print('Would you like (R)ock, (P)aper, or (S)cissors?');
  selection = stdin.readLineSync().toUpperCase();

  switch (selection) {
    case 'R':
      return 'Rock';
      break;
    case 'P':
      return 'Paper';
      break;
    case 'S':
      return 'Scissors';
      break;
    default:
      return 'Quit';
      break;
  }
}

dynamic getComputerMove() {
  /// Return a random move in the from of a string of either 'Rock','Paper','Scissors'

  rand = Random();
  move = rand.nextInt(3);

  switch (move) {
    case 0:
      return 'Rock';
      break;
    case 1:
      return 'Paper';
      break;
    case 2:
      return 'Scissors';
      break;
    default:
      break;
  }
}

dynamic whoWon(String playerMove, String computerMove) {
  ///Determine if the player or the computer won by comparing 'playerMove' to 'computerMove'.

  if (playerMove == computerMove) {
    return 'Tie';
  } else if (playerMove == 'Rock' && computerMove == 'Scissors') {
    return 'You Win!';
  } else if (playerMove == 'Scissors' && computerMove == 'Paper') {
    return 'You Win!';
  } else if (playerMove == 'Paper' && computerMove == 'Rock') {
    return 'You Win!';
  } else {
    return 'Computer Win!';
  }
}
