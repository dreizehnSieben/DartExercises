import 'dart:io';
import 'package:maybe/maybe.dart';

class UserIO {
  String readInputSync(String prompt, String imp) {
    Maybe<String> input = Maybe.nothing();

    do {
      stdout.write(prompt);
      input = stdin.readLineSync().toMaybe();

      if (input.isNothing) {
        print(imp);
      }
    } while (input.isNothing);

    return input.withDefault('');
  }
}

UserIO get userio => UserIO();
