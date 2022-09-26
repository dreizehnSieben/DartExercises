import 'package:user_io/user_io.dart';

class Program {
  static void run() {
    var name =
        userio.readInputSync('What is your name? ', 'Please give me a name.');
    // ignore: prefer_interpolation_to_compose_strings
    var greeting = 'Hello, ' + name + ', nice to meet you!';
    print(greeting);
  }
}
