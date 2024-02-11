import 'package:atoprev/domain/commom/fields/address.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for Address', () {
    test('It must create an Address', () {
      Address address = const Address(
        street: 'Rua 1',
        number: '123',
        neighborhood: 'Bairro 1',
        complement: 'Complemento',
        city: 'São Luís',
        state: 'MA',
        zipCode: '12345678',
      );
      expect(address.street, 'Rua 1');
      expect(address.number, '123');
      expect(address.neighborhood, 'Bairro 1');
      expect(address.complement, 'Complemento');
      expect(address.city, 'São Luís');
      expect(address.state, 'MA');
      expect(address.zipCode, '12345678');
    });

    test('Street must have at least 3 characters', () {
      expect(
        () => Address(
          street: 'R',
          number: '123',
          neighborhood: 'Bairro 1',
          complement: 'Complemento',
          city: 'São Luís',
          state: 'MA',
          zipCode: '12345678',
        ),
        throwsAssertionError,
      );
    });

    test('Street must have at most 100 characters', () {
      expect(
        () => Address(
          street: 'R' * 101,
          number: '123',
          neighborhood: 'Bairro 1',
          complement: 'Complemento',
          city: 'São Luís',
          state: 'MA',
          zipCode: '12345678',
        ),
        throwsAssertionError,
      );
    });

    test('Number must have at least 1 character', () {
      expect(
        () => Address(
          street: 'Rua 1',
          number: '',
          neighborhood: 'Bairro 1',
          complement: 'Complemento',
          city: 'São Luís',
          state: 'MA',
          zipCode: '12345678',
        ),
        throwsAssertionError,
      );
    });

    test('Number must have at most 10 characters', () {
      expect(
        () => Address(
          street: 'Rua 1',
          number: '1' * 11,
          neighborhood: 'Bairro 1',
          complement: 'Complemento',
          city: 'São Luís',
          state: 'MA',
          zipCode: '12345678',
        ),
        throwsAssertionError,
      );
    });

    test('Complement must have at most 100 characters', () {
      expect(
        () => Address(
          street: 'Rua 1',
          number: '123',
          neighborhood: 'Bairro 1',
          complement: 'C' * 101,
          city: 'São Luís',
          state: 'MA',
          zipCode: '12345678',
        ),
        throwsAssertionError,
      );
    });

    test('Neighborhood must have at least 3 characters', () {
      expect(
        () => Address(
          street: 'Rua 1',
          number: '123',
          neighborhood: 'B',
          complement: 'Complemento',
          city: 'São Luís',
          state: 'MA',
          zipCode: '12345678',
        ),
        throwsAssertionError,
      );
    });

    test('Neighborhood must have at most 100 characters', () {
      expect(
        () => Address(
          street: 'Rua 1',
          number: '123',
          neighborhood: 'B' * 101,
          complement: 'Complemento',
          city: 'São Luís',
          state: 'MA',
          zipCode: '12345678',
        ),
        throwsAssertionError,
      );
    });

    test('City must have at least 3 characters', () {
      expect(
        () => Address(
          street: 'Rua 1',
          number: '123',
          neighborhood: 'Bairro 1',
          complement: 'Complemento',
          city: 'S',
          state: 'MA',
          zipCode: '12345678',
        ),
        throwsAssertionError,
      );
    });

    test('City must have at most 100 characters', () {
      expect(
        () => Address(
          street: 'Rua 1',
          number: '123',
          neighborhood: 'Bairro 1',
          complement: 'Complemento',
          city: 'S' * 101,
          state: 'MA',
          zipCode: '12345678',
        ),
        throwsAssertionError,
      );
    });

    test('State must have 2 characters', () {
      expect(
        () => Address(
          street: 'Rua 1',
          number: '123',
          neighborhood: 'Bairro 1',
          complement: 'Complemento',
          city: 'São Luís',
          state: 'M',
          zipCode: '12345678',
        ),
        throwsAssertionError,
      );
    });

    test('Zip code must have 8 characters', () {
      expect(
        () => Address(
          street: 'Rua 1',
          number: '123',
          neighborhood: 'Bairro 1',
          complement: 'Complemento',
          city: 'São Luís',
          state: 'MA',
          zipCode: '1234567',
        ),
        throwsAssertionError,
      );
    });
  });
}
