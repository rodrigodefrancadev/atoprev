import 'package:atoprev/domain/core/value_object.dart';
import 'package:atoprev/helpers/is_uuid_v4.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends ValueObject<String> {
  UniqueId([String? value])
      : assert(value == null || isUuidV4(value), 'Id must be a valid UUID'),
        super(value ?? const Uuid().v4());
}
