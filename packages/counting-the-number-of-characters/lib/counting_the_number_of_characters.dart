import 'package:user_io/user_io.dart';

class Program {
  static run() {
    var input = userio.readInputSync(
        'What is the input string? ', 'Please give me some input.');
    print('$input has ${input.length} characters.');
  }
}
