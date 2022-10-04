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

  num readNumberSync(String prompt, String imp) {
    Maybe<num> parsed = Maybe.nothing();

    do {
      var input = readInputSync(prompt, imp);
      parsed = num.tryParse(input).toMaybe();

      if (parsed.isNothing) {
        print("Input is not a number.");
      }
    } while (parsed.isNothing);

    return parsed.withDefault(0.0);
  }

  int readIntegerSync(String prompt, String imp) {
    var input = readNumberSync(prompt, imp);
    return input.toInt();
  }
}

UserIO get userio => UserIO();
