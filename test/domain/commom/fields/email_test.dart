import 'package:atoprev/domain/commom/fields/email.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for Email', () {
    test('Email must be created successfuly', () {
      const String emailValue = 'test@exemple.com';
      var email = Email(emailValue);
      expect(email.value, emailValue);
    });

    test('Email must throw exception if value is an invalid e-mail', () {
      const String emailValue = 'xxxx@xxxxxxx';
      expect(() => Email(emailValue), throwsAssertionError);
    });

    test('Email must be equatable', () {
      var email1 = Email('test@mail.com');
      var email2 = Email('test@mail.com');
      var email3 = Email('test2@mail.com');

      expect(email1 == email2, true);
      expect(email1 == email3, false);
    });
  });
}
