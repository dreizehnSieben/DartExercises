import 'package:user_io/user_io.dart';

class Program {
  static run() {
    var q = userio.readInputSync(
        'What is the quote? ', 'Please give me some quote.');
    var a = userio.readInputSync('Who said it? ', 'Please give me an author.');

    // ignore: prefer_interpolation_to_compose_strings
    var output = a + ' says, ' + '"' + q + '"';

    print(output);
  }
}
