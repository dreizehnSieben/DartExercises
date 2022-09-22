import 'package:maybe/maybe.dart';
import 'package:saying_hello/saying_hello.dart';
import 'package:test/test.dart';
import 'package:test/fake.dart';

class FakeProgram extends Fake implements Program {
  @override
  Maybe<String> readNameSync() => Maybe.just('Brian');
}

void main() {
  var program = FakeProgram();

  test('.readNameSync() returns just a name', () {
    var maybeName = program.readNameSync();

    expect(maybeName.isJust, isTrue);

    var name = maybeName.match(onJust: (value) => value, onNothing: () => '');

    expect(name, equals('Brian'));
  });
}
