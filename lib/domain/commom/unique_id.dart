import 'package:atoprev/domain/commom/helpers/is_uuid_v4.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends Equatable {
  final String value;
  UniqueId([String? value])
      : assert(value == null || isUuidV4(value), 'Id must be a valid UUID'),
        value = value ?? const Uuid().v4();

  @override
  List<Object?> get props => [value];
}
