import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  while (true) {
    stdout.write('Rock, Paper or Scissors ? ( r / p / s / q for quit) :  ');
    final playerInput = stdin.readLineSync();
    if (playerInput == 'r' || playerInput == 'p' || playerInput == 's') {
      // select player move
      var playerMove;
      if (playerInput == 'r') {
        playerMove = Move.rock;
      } else if (playerInput == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      print('Player : $playerMove');
      // generate random AI move
      final random = Random().nextInt(3);
      final aiMove = Move.values[random];
      print('Computer : $aiMove');
      // logical win /lose
      if (playerMove == aiMove) {
        print('It\'s a Draw!!');
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper) {
        print('Player win !!');
      } else {
        print('Oh! You lose...');
      }
      // quit game and error selection
    } else if (playerInput == 'q') {
      print('End Game !');
      break;
    } else {
      print('Invalid selection, try again...');
    }
  }
}
