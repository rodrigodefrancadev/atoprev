import 'package:atoprev/domain/commom/helpers/is_valid_cpf.dart';
import 'package:equatable/equatable.dart';

class Cpf extends Equatable {
  final String value;

  Cpf(this.value) : assert(isCpfValid(value), 'CPF is invalid');

  @override
  List<Object?> get props => [value];
}
