import 'package:atoprev/domain/commom/fields/cpf.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for Cpf', () {
    test('should create a Cpf based on a valid value', () {
      const String cpf = '52768348066';
      final cpfField = Cpf(cpf);
      expect(cpfField.value, cpf);
    });

    test('Throws AssetionError if an invalid CPF value is given', () {
      const String cpf = 'AS212312';
      expect(() => Cpf(cpf), throwsAssertionError);
    });

    test('Cpf must be equatable', () {
      const cpf = '52768348066';
      var cpf1 = Cpf(cpf);
      var cpf2 = Cpf(cpf);
      var cpf3 = Cpf('41148197036');

      expect(cpf1 == cpf2, true);
      expect(cpf1 == cpf3, false);
    });
  });
}
