import 'package:maybe/maybe.dart';
import 'package:saying_hello/saying_hello.dart';

void main() {
  Maybe<String> name = Maybe.nothing();
  var prg = Program();

  do {
    name = prg.readNameSync();

    name.match(onJust: (value) {
      var greeting = 'Hello, $value, nice to meet you!';

      print(greeting);
    }, onNothing: () {
      print('Please tell me your name.');
    });
  } while (name.isNothing);
}
