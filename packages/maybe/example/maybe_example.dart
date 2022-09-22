import 'package:maybe/maybe.dart';

void main() {
  const just = Maybe.just('Awesome!');

  just.match(
      onJust: print,
      onNothing: () {
        print('nothing to show');
      });
}
