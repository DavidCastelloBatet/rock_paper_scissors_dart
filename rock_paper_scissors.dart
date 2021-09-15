import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final rng = Random();
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
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('Computer : $aiMove');
      // TODO: LOGICAL WIN / LOSE
    } else if (playerInput == 'q') {
      print('End Game !');
      break;
    } else {
      print('Invalid selection, try again...');
    }
  }
}
