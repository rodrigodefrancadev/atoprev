import 'package:atoprev/domain/commom/fields/phone.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for Phone', () {
    test('Phone numbers must be created successfuly', () {
      const String phoneValue = '1234567890';
      const String description = 'My phone';
      final phone = Phone(phoneValue, description: description);
      expect(phone.number, phoneValue);
      expect(phone.description, description);
    });
    test('Phone numbers must have at least 3 characters', () {
      const String phone = '12';
      expect(() => Phone(phone), throwsAssertionError);
    });

    test('Phone numbers must have at most 20 characters', () {
      const String phone = '123456789012345678901';
      expect(() => Phone(phone), throwsAssertionError);
    });

    test('Phone numbers must have only numbers', () {
      const String phone = '1234567890A';
      expect(() => Phone(phone), throwsAssertionError);
    });

    test('Phone numbers can have description', () {
      const String phoneValue = '1234567890';
      const String description = 'My phone';
      final phone = Phone(phoneValue, description: description);
      expect(phone.description, description);
    });

    test('Description must have at least 3 characters', () {
      const String phoneValue = '1234567890';
      const String description = 'My';
      expect(() => Phone(phoneValue, description: description), throwsAssertionError);
    });

    test('Description must have at most 50 characters', () {
      const String phoneValue = '1234567890';
      const String description = 'My phone description must have at most 50 characters';
      expect(() => Phone(phoneValue, description: description), throwsAssertionError);
    });

    test('Phone must be equatable', () {
      const phoneValue = '1234567890';
      const description = 'My phone';
      var phone1 = Phone(phoneValue, description: description);
      var phone2 = Phone(phoneValue, description: description);
      var phone3 = Phone('0987654321', description: description);
      var phone4 = Phone(phoneValue, description: 'My other phone');

      expect(phone1 == phone2, true);
      expect(phone1 == phone3, false);
      expect(phone1 == phone4, false);
    });
  });
}
