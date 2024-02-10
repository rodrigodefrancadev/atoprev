import 'package:atoprev/domain/commom/helpers/is_valid_cpf.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for isValidCpf function', () {
    test('should return true for valid CPF', () {
      const String cpf = '52768348066';
      final result = isCpfValid(cpf);
      expect(result, true);
    });

    test('should return false for a formated CPF, even it is valid', () {
      const String cpf = '527.683.480-66';
      final result = isCpfValid(cpf);
      expect(result, false);
    });

    group('should return false for invalid CPF', () {
      test('blocked CPFs', () {
        for (var i = 0; i <= 9; i++) {
          final cpf = i.toString() * 11;
          final result = isCpfValid(cpf);
          expect(result, false);
        }
      });

      test('less then 11 characters', () {
        const String cpf = '5276834806';
        final result = isCpfValid(cpf);
        expect(result, false);
      });

      test('with invalid characters', () {
        const String cpf = '5276834806A';
        final result = isCpfValid(cpf);
        expect(result, false);
      });
    });
  });
}
