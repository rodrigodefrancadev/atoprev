import 'package:atoprev/domain/commom/fields/identification_document.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for IdentificationDocument', () {
    test('IdentificationDocument must be created successfuly', () {
      const String number = '1234567890';
      const String issuer = 'SSP/MA';
      DateTime issueDate = DateTime(2021, 1, 1);

      final identificationDocument = IdentificationDocument(
        number: number,
        issuer: issuer,
        issueDate: issueDate,
      );

      expect(identificationDocument.number, number);
      expect(identificationDocument.issuer, issuer);
      expect(identificationDocument.issueDate, issueDate);
    });

    test('IdentificationDocument number must have at least 3 characters', () {
      const String number = '12';
      const String issuer = 'SSP/MA';
      expect(
        () => IdentificationDocument(
          number: number,
          issuer: issuer,
        ),
        throwsAssertionError,
      );
    });

    test('IdentificationDocument number must have at most 20 characters', () {
      const String number = '123456789012345678901';
      const String issuer = 'SSP/MA';
      expect(
        () => IdentificationDocument(
          number: number,
          issuer: issuer,
        ),
        throwsAssertionError,
      );
    });

    test('IdentificationDocument issuer must have at least 2 characters', () {
      const String number = '1234567890';
      const String issuer = 'S';
      expect(
        () => IdentificationDocument(
          number: number,
          issuer: issuer,
        ),
        throwsAssertionError,
      );
    });

    test('IdentificationDocument issuer must have at most 10 characters', () {
      const String number = '1234567890';
      const String issuer = 'SSP/MA-1234';
      expect(
        () => IdentificationDocument(
          number: number,
          issuer: issuer,
        ),
        throwsAssertionError,
      );
    });

    test('Issue date must be in the past', () {
      const String number = '1234567890';
      const String issuer = 'SSP/MA';
      DateTime issueDate = DateTime.now().add(const Duration(days: 1));
      expect(
        () => IdentificationDocument(
          number: number,
          issuer: issuer,
          issueDate: issueDate,
        ),
        throwsAssertionError,
      );
    });

    test('IdentificationDocument must be equatable', () {
      const number = '1234567890';
      const issuer = 'SSP/MA';
      var identificationDocument1 = IdentificationDocument(
        number: number,
        issuer: issuer,
      );
      var identificationDocument2 = IdentificationDocument(
        number: number,
        issuer: issuer,
      );
      var identificationDocument3 = IdentificationDocument(
        number: '0987654321',
        issuer: issuer,
      );
      var identificationDocument4 = IdentificationDocument(
        number: number,
        issuer: 'SSP/MA-123',
      );
      var identificationDocument5 = IdentificationDocument(
        number: number,
        issuer: issuer,
        issueDate: DateTime(2021, 1, 1),
      );

      expect(identificationDocument1 == identificationDocument2, true);
      expect(identificationDocument1 == identificationDocument3, false);
      expect(identificationDocument1 == identificationDocument4, false);
      expect(identificationDocument1 == identificationDocument5, false);
    });
  });
}
