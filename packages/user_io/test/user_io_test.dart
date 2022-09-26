import 'package:user_io/user_io.dart';
import 'package:test/test.dart';
import 'package:test/fake.dart';

class FakeIO extends Fake implements UserIO {
  @override
  String readInputSync(String prompt, String imp) => 'Bob';

  @override
  num readNumberSync(String prompt, String imp) => 42;
}

void main() {
  test('readInputSync()', () {
    final fake = FakeIO();
    var name = fake.readInputSync('What is your name? ', 'Please input a name');

    expect(name, equals('Bob'));
  });

  test('readNumberSync()', () {
    final fake = FakeIO();
    var answer = fake.readNumberSync(
        'What is the answer of life and everything? ',
        'Please give me some number');
    expect(answer, equals(42));
  });
}
