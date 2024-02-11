import 'package:atoprev/domain/commom/helpers/is_valid_email.dart';
import 'package:equatable/equatable.dart';

class Email extends Equatable {
  final String value;
  Email(this.value) : assert(isValidEmail(value), 'Email is invalid');

  @override
  List<Object?> get props => [value];
}
