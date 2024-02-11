import 'package:atoprev/domain/implementations/entities/costumer/fields/costumer_credentials.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for CostumerCredentials', () {
    test('CostumerCredentials must be created successfuly', () {
      const String meuGovPassword = '123456';
      const String emailPassword = '123456';

      const meuGovCredentials = CostumerCredentials(
        meuGovPassword: meuGovPassword,
        emailPassword: emailPassword,
      );

      expect(meuGovCredentials.meuGovPassword, meuGovPassword);
      expect(meuGovCredentials.emailPassword, emailPassword);
    });

    test('meuGovPassword must have at least 6 characters', () {
      const String meuGovPassword = '12345';
      expect(
        () => CostumerCredentials(meuGovPassword: meuGovPassword),
        throwsAssertionError,
      );
    });

    test('meuGovPassword must have at most 100 characters', () {
      String meuGovPassword = '1' * 101;
      expect(
        () => CostumerCredentials(meuGovPassword: meuGovPassword),
        throwsAssertionError,
      );
    });

    test('emailPassword must have at least 6 characters', () {
      const String emailPassword = '12345';
      expect(
        () => CostumerCredentials(emailPassword: emailPassword),
        throwsAssertionError,
      );
    });

    test('emailPassword must have at most 100 characters', () {
      String emailPassword = '1' * 101;
      expect(
        () => CostumerCredentials(emailPassword: emailPassword),
        throwsAssertionError,
      );
    });

    test('CostumerCredentials must be equatable', () {
      const String meuGovPassword = '123456';
      const String emailPassword = '123456';

      var credentials1 = const CostumerCredentials(
        meuGovPassword: meuGovPassword,
        emailPassword: emailPassword,
      );

      var credentials2 = const CostumerCredentials(
        meuGovPassword: meuGovPassword,
        emailPassword: emailPassword,
      );

      var credentials3 = const CostumerCredentials(
        meuGovPassword: '654321',
        emailPassword: emailPassword,
      );

      var credentials4 = const CostumerCredentials(
        meuGovPassword: meuGovPassword,
        emailPassword: '654321',
      );

      expect(credentials1 == credentials2, true);
      expect(credentials1 == credentials3, false);
      expect(credentials1 == credentials4, false);
    });
  });
}
