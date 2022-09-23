import 'dart:io';

import 'package:maybe/maybe.dart';

class Program {
  static Maybe<String> readInputSync(String prompt, String imp) {
    Maybe<String> input = Maybe.nothing();

    do {
      stdout.write(prompt);
      input = stdin.readLineSync().toMaybe();

      if (input.isNothing) {
        print(imp);
      }
    } while (input.isNothing);

    return input;
  }

  static run() {
    var q = readInputSync('What is the quote? ', 'Please give me some quote.');
    var a = readInputSync('Who said it? ', 'Please give me an author.');

    // ignore: prefer_interpolation_to_compose_strings
    var output = a.withDefault('') + ' says, ' + '"' + q.withDefault('') + '"';

    print(output);
  }
}
