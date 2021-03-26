import 'package:my_app/my_app.dart';

String playerMove;
var computerMove;

void main() {
  while (true) {
    print('Rock, Paper, Scissors Shoot!');
    playerMove = getPlayerMove();
    if (playerMove == 'Quit') {
      return; // returning from void function exits it
    }
    print('You played $playerMove');
    computerMove = getComputerMove();
    print('Computer played $computerMove');
    print(whoWon(playerMove, computerMove));
  }
}
