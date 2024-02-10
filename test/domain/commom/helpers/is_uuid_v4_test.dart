import 'package:atoprev/domain/commom/helpers/is_uuid_v4.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for isUuidV4 function', () {
    test('should return true for valid UUID', () {
      const String uuid = 'f47ac10b-58cc-4372-a567-0e02b2c3d479';
      final result = isUuidV4(uuid);
      expect(result, true);
    });

    test('should return false for invalid UUID', () {
      const String uuid = 'f47ac10b-58cc-4372-a567-0e02b2c3d479z';
      final result = isUuidV4(uuid);
      expect(result, false);
    });
  });
}
