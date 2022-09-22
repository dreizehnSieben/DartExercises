import 'dart:io';
import 'package:maybe/maybe.dart';

extension MaybeNullableString on String? {
  Maybe<String> toMaybe() {
    return this != null && (this as String).isNotEmpty
        ? Maybe.just(this as String)
        : Maybe<String>.nothing();
  }
}

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
