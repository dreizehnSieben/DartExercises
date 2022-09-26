import 'package:user_io/user_io.dart';

void main() {
  var name =
      userio.readInputSync('What is your name? ', 'Please give me a name.');
  print('Hello, $name, nice to meet you!');

  var answer = userio.readNumberSync(
      'What is the answer of life and everything? ',
      'Please give me an answer.');
  print('The answer is: $answer');
}
