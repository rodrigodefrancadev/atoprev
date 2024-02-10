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
  });
}
