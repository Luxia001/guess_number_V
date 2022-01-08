import 'dart:ffi';
import 'dart:io';
import 'dart:math';

class Game {
  static const defaultmaxRandom = 100;
  int? _answer;
  int _guessCount = 0;
  static final List<int> guessCountList = [];

  Game({int maxRandom = defaultmaxRandom}) {
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;

  }

  int get guessCount{
    return _guessCount;
  }

  void addCountList(){
    guessCountList.add(_guessCount);
  }

  int doGuess(int num) {
    _guessCount++;
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      return 0;
    }
  }
}

class PlayGame {

  PlayGame() {
    List<int> myList = [];
    myList.add(00000);
    for(var i=0;i < myList.length;++i){
      print(myList[i]);
    }

    int? maxRandom;
    do{
      stdout.write("\nEnter a maxinum number to random: ");
      var intput = stdin.readLineSync();
      maxRandom = int .tryParse(intput!);
    }while (maxRandom == null);

    var game = Game(maxRandom: maxRandom);
    var isCorrect = false;


    print('╔════════════════════════════════════════');
    print('║            GUESS THE NUMBER            ');
    print('╟────────────────────────────────────────');

    do {
      stdout.write('║ Guess the number between 1 and $maxRandom: ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        continue;
      }

      var result = game.doGuess(guess);

      if (result == 1) {
        print('║ ➜ $guess is TOO HIGH! ▲');
        print('╟────────────────────────────────────────');
      } else if (result == -1) {
        print('║ ➜ $guess is TOO LOW! ▼');
        print('╟────────────────────────────────────────');
      } else if (result == 0) {
        print('║ ➜ $guess is CORRECT ❤, total guesses: ${game.guessCount}');
        print('╟────────────────────────────────────────');
        isCorrect = true;
        //Game.guessCountList.add(game.guessCount);
        game.addCountList();
      }
    } while (!isCorrect);

    print('║                 THE END                ');
    print('╚════════════════════════════════════════');
  }
}

class Rerun {
  Rerun() {
    bool check = true;
    Game game = new Game();
    do {
      //PlayGame playGame = PlayGame();

      print("Play again? (Y/N): ");
      //var input = stdin.readLineSync();
      //var play = int.tryParse(input!);


      var play = stdin.readLineSync();
      //var ans = int.tryParse(play!);

      if (play == "Y" || play == "y") {
        print ("Enter a maximum number to random: ");
        int max =  int.parse(stdin.readLineSync()!);

        PlayGame playGame = PlayGame();
        //print("rerun");
        check = true;

      } else if (play == "N" || play == "n") {
        print("\n\nYou've played ${Game.guessCountList.length} games");
        for(int i=0; i<Game.guessCountList.length; i++){
          print('🚀 Game #${i+1}: ${Game.guessCountList[i]} guesses');
        }
        check = false;
        break;
      }
    } while (true);
  }
}
