import 'package:atoprev/domain/core/unique_id.dart';

abstract class Entity {
  final UniqueId id;

  Entity(this.id);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Entity && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
