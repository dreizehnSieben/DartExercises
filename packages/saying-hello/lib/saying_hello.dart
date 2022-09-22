import 'dart:io';
import 'package:maybe/maybe.dart';

class Program {
  Maybe<String> readNameSync() {
    stdout.write('What is your name? ');
    var answer = stdin.readLineSync();

    return answer != null && answer.isEmpty
        ? Maybe<String>.nothing()
        : Maybe.just(answer as String);
  }
}
