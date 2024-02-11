import 'package:atoprev/domain/commom/entity.dart';
import 'package:atoprev/domain/commom/unique_id.dart';
import 'package:flutter_test/flutter_test.dart';

class _EntityForTest extends Entity {
  _EntityForTest(super.id);
}

void main() {
  group('Tests for Entity', () {
    test('Entities with same id are equals', () {
      final id = UniqueId();
      final entity1 = _EntityForTest(id);
      final entity2 = _EntityForTest(id);
      final entity3 = _EntityForTest(UniqueId());

      expect(entity1 == entity2, true);
      expect(entity1 == entity3, false);
    });

    test('Entity hashCode must be equal to its id hashcode', () {
      final id = UniqueId();
      final entity = _EntityForTest(id);

      expect(id.hashCode, entity.hashCode);
    });
  });
}
