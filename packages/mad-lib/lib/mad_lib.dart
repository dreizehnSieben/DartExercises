import 'package:user_io/user_io.dart';

class Program {
  static run() {
    var noun = userio.readInputSync('Enter a noun: ', 'Please give me a noun.');
    var verb = userio.readInputSync('Enter a verb: ', 'Please give me a verb.');
    var adjective = userio.readInputSync(
        'Enter an adjective: ', 'Please give me an adjective.');
    var adverb =
        userio.readInputSync('Enter an adverb: ', 'Pease give me an adverb.');

    print("Do you $verb your $adjective $noun $adverb? That's hilarious!");
  }
}
