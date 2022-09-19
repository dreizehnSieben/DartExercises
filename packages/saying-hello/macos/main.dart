import 'dart:io';

void main() {
  stdout.write('What is your name? ');
  String? name = stdin.readLineSync();

  if (name != null) {
    var greeting = 'Hello, $name, nice to meet you!';
    print(greeting);
  }
}
