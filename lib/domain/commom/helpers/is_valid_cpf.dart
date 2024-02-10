import 'package:cpf_cnpj_validator/cpf_validator.dart';

bool isCpfValid(String cpf) {
  return CPFValidator.isValid(cpf, false);
}
