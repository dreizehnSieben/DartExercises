import 'dart:io';
import 'package:maybe/maybe.dart';

class Program {
  static void run() {
    Maybe<String> name = Maybe.nothing();

    do {
      stdout.write('What is your name? ');
      name = stdin.readLineSync().toMaybe();

      name.match(onJust: (value) {
        var greeting = 'Hello, $value, nice to meet you!';
        print(greeting);
      }, onNothing: () {
        print('Please tell me your name.');
      });
    } while (name.isNothing);
  }
}
