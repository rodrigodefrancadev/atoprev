import 'package:atoprev/domain/commom/fields/person_name.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for PersonName', () {
    test('should create a PersonName based on a valid name', () {
      const String name = 'John Doe';
      const personName = PersonName(name);
      expect(personName.value, name);
    });

    test('PersonName cannot has less then 3 characters', () {
      const String name = 'Jo';
      expect(() => PersonName(name), throwsAssertionError);
    });

    test('PersonName cannot has more then 100 characters', () {
      String name = 'J' * 101;
      expect(() => PersonName(name), throwsAssertionError);
    });

    test('PersonName must be equatable', () {
      const name = 'John Doe';
      const personName1 = PersonName(name);
      const personName2 = PersonName(name);
      const personName3 = PersonName('Maya Rex');

      expect(personName1 == personName2, true);
      expect(personName1 == personName3, false);
    });
  });
}
