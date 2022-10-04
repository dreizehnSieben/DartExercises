import 'package:user_io/user_io.dart';

void main() {
  const imperative = 'Please give me a number.';

  var first = userio.readNumberSync('What is the first number? ', imperative);

  var second = userio.readNumberSync('What is the second number? ', imperative);

  var sum = first + second;
  var diff = first - second;
  var mult = first * second;
  var div = first / second;

  print('$first + $second = $sum\n'
      '$first - $second = $diff\n'
      '$first * $second = $mult\n'
      '$first / $second = $div');
}
