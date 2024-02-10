import 'package:equatable/equatable.dart';

class PersonName extends Equatable {
  final String value;
  const PersonName(this.value)
      : assert(value.length >= 3, 'Name must have at least 3 characters'),
        assert(value.length <= 100, 'Name must have at most 100 characters');

  @override
  List<Object?> get props => [value];
}
