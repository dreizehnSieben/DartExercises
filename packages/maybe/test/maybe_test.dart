import 'package:maybe/maybe.dart';
import 'package:test/test.dart';

void main() {
  test('maybe.just("hi") is Just', () {
    final a = Maybe.just('hi');

    expect(a.isJust, isTrue);
    expect(a.isNothing, isFalse);
  });

  test('maybe nothing is Nothing', () {
    final a = Maybe<String>.nothing();

    expect(a.isNothing, isTrue);
    expect(a.isJust, isFalse);
  });

  test('.match()', () {
    final just = Maybe.just('Hello');
    final nothing = Maybe<String>.nothing();

    String id(String value) {
      return value;
    }

    String empty() {
      return '';
    }

    var ra = just.match(onJust: id, onNothing: empty);
    var rb = nothing.match(onJust: id, onNothing: empty);

    expect(ra, equals('Hello'));
    expect(rb.isEmpty, isTrue);
  });
}
