import 'package:atoprev/domain/commom/value_object.dart';

class PersonName extends ValueObject<String> {
  PersonName(super.value)
      : assert(value.length >= 3, 'Name must have at least 3 characters'),
        assert(value.length <= 100, 'Name must have at most 100 characters');
}
