import 'package:atoprev/domain/commom/value_object.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('tests for ValueObject', () {
    test('ValueObjects with same value are equals', () {
      final a1 = ValueObject('A');
      final a2 = ValueObject('A');
      final b = ValueObject('B');

      expect(a1 == a2, true);
      expect(a1 == b, false);
    });

    test('ValueObject hashCode must be equal to its value hashcode', () {
      const valueA = 'A';
      final valueObjectA = ValueObject(valueA);

      expect(valueA.hashCode, valueObjectA.hashCode);
    });

    test('ValueObject converted to String must be equal to its value converted to String', () {
      const valueX = 123;
      final valueObjectX = ValueObject(valueX);

      expect('$valueX', '$valueObjectX');
    });
  });
}
