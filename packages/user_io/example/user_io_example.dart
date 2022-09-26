import 'package:user_io/user_io.dart';

void main() {
  var name =
      userio.readInputSync('What is your name? ', 'Please give me a name.');
  print('Hello, $name, nice to meet you!');
}
