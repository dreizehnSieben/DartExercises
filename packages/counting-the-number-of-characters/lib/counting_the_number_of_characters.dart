import 'dart:io';

import 'package:maybe/maybe.dart';

class Program {
  static run() {
    Maybe<String> input = Maybe.nothing();

    do {
      stdout.write('What is the input string? ');
      input = stdin.readLineSync().toMaybe();

      input.match(onJust: (value) {
        print('$value has ${value.length} characters.');
      }, onNothing: () {
        print('Please give some input string.');
      });
    } while (input.isNothing);
  }
}
