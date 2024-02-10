import 'package:atoprev/domain/commom/helpers/is_valid_cpf.dart';

class Cpf {
  final String value;
  Cpf(this.value) : assert(isCpfValid(value), 'CPF is invalid');
}
