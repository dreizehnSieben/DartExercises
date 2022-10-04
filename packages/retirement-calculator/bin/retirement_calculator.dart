import 'package:user_io/user_io.dart';

void main() {
  var integerPlease = 'Please give me an integer.';

  var currentAge =
      userio.readIntegerSync('What is your current age? ', integerPlease);

  var targetAge = userio.readIntegerSync(
      'At what age would you like to retire? ', integerPlease);

  var ageDifference = targetAge - currentAge;
  var actualYear = DateTime.now().year;
  var targetYear = actualYear + ageDifference;

  print('You have $ageDifference years left until you can retire.');
  print('It\'s $actualYear, so you can retire in $targetYear.');
}
