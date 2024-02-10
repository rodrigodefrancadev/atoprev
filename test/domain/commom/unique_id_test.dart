import 'package:atoprev/domain/commom/unique_id.dart';
import 'package:atoprev/domain/commom/helpers/is_uuid_v4.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for UniqueId', () {
    test('should return a valid UUID', () {
      final uniqueId = UniqueId();
      final result = isUuidV4(uniqueId.value);
      expect(result, true);
    });

    test('should be created succesfuly with a provided uuidv4 value', () {
      const uuid = 'f47ac10b-58cc-4372-a567-0e02b2c3d479';
      final uniqueId = UniqueId(uuid);
      expect(uniqueId.value, uuid);
    });

    test('should throw an AssertionError if the provided uuidv4 value is invalid', () {
      const uuid = 'f47ac10b-58cc-4372-a567-0e02b2c3d479z';
      expect(() => UniqueId(uuid), throwsA(isA<AssertionError>()));
    });

    test('UniqueId must be equatable', () {
      final uniqueId1 = UniqueId();
      final uniqueId2 = UniqueId();
      final uniqueId3 = UniqueId('f47ac10b-58cc-4372-a567-0e02b2c3d479');
      final uniqueId4 = UniqueId('f47ac10b-58cc-4372-a567-0e02b2c3d479');
      final uniqueId5 = UniqueId('f47ac10b-58cc-4372-a567-0e02b2c3d478');

      expect(uniqueId1 == uniqueId2, false);
      expect(uniqueId1 == uniqueId3, false);
      expect(uniqueId3 == uniqueId4, true);
      expect(uniqueId3 == uniqueId5, false);
    });
  });
}
