import 'package:atoprev/exemple.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Exemple test', () {
    final exemple = Exemple();
    expect(exemple.helloMessageFor('world'), 'Hello, world!');
  });

  test('Exemple test', () {
    final exemple = Exemple();
    expect(exemple.goodbyeMessageFor('world'), 'Goodbye, world!');
  });
}
