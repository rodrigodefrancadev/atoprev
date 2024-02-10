import 'package:atoprev/domain/commom/helpers/is_valid_email.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for isValidEmail function', () {
    test('should return true for valid email', () {
      const String email = 'exemple@domain.com';
      final result = isValidEmail(email);
      expect(result, true);
    });

    test('should return false for invalid email', () {
      const String email = 'xxxxxxx@xxxxxx';
      final result = isValidEmail(email);
      expect(result, false);
    });
  });
}
