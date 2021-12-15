import 'dart:io';
import 'dart:math';

void main() {
  print('620710467 ภานุวัฒน์ วิจิตรศิริวัฒน์');

  /*
  // var ภาษา Dart จะทำการ Infer type ให้เราดูจากค่าเริ่มต้น
  // ที่กำหนดกับตัวแปร
  dynamic i;
  i = 123; // integer listeral
  print(i);
  i = "Hello";
  print(i);
  i = true;
  print(i);
  */

  print("╔══════════════════════════════════════════════════════ ");
  print("║                GUESS THE NUMBER");
  print("╟────────────────────────────────────────────────────── ");
  int count = 0;
  Random r = new Random(); // var r = new Random();
  var answer = r.nextInt(100) + 1;
  var check = true;
while(check) {
  stdout.write("║        " + 'Guess the number between 1 to 100 : ');
  var num = stdin.readLineSync();
  var guess = int.tryParse(num!);
  if(guess != null ){
    if (guess! < answer) {
      count++;
      print("║    ➜" + guess.toString() + " is TOO LOW! ▼");

      print("╟────────────────────────────────────────────────────── ");
    } else if (guess! > answer) {
      count++;
      print("║    ➜" + guess.toString() + " is TOO HIGH! ▲");

      print("╟────────────────────────────────────────────────────── ");
    } else if (guess == answer) {
      count++;
      print("║   ➜" + guess.toString() + " is CORRECT ❤,total guesses: $count");
      print("╟────────────────────────────────────────────────────── ");
      check = false;
    }
  }
}

/*
  while(check) {
    stdout.write("║        " + 'Guess the number between 1 to 100 : ');
    var num = stdin.readLineSync();
    var guess = int.tryParse(num!);


    if (guess! < answer) {
      count++;
      print("║    ➜" + guess.toString() + " is TOO LOW! ▼");

      print("╟────────────────────────────────────────────────────── ");
    } else if (guess! > answer) {
      count++;
      print("║    ➜" + guess.toString() + " is TOO HIGH! ▲");

      print("╟────────────────────────────────────────────────────── ");
    } else if (guess == answer) {
      count++;
      print("║   ➜" + guess.toString() + " is CORRECT ❤,total guesses: $count");
      print("╟────────────────────────────────────────────────────── ");
      check = false;
    }
  }
*/
  print("║                 THE END :)");
  print("╚══════════════════════════════════════════════════════ ");


  /*
  // type inference
  var ii = 123;
  var rr = new Random();
  var b = true;

  var j; // Dart กำหนดเป็น type เป็น Dynamic
  j = 123;
  j = "Hello";

  print('Please enter your name : ');
  String? name = stdin.readLineSync();
  i = 0;
  do {
    print(name);
    i++;
  } while (i < 2);
   */
}
