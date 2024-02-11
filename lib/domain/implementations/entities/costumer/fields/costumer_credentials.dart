import 'package:equatable/equatable.dart';

class CostumerCredentials extends Equatable {
  final String? meuGovPassword;
  final String? emailPassword;

  const CostumerCredentials({
    this.meuGovPassword,
    this.emailPassword,
  })  : assert(meuGovPassword == null || meuGovPassword.length >= 6, 'Password must have at least 6 characters'),
        assert(meuGovPassword == null || meuGovPassword.length <= 100, 'Password must have at most 100 characters'),
        assert(emailPassword == null || emailPassword.length >= 6, 'Password must have at least 6 characters'),
        assert(emailPassword == null || emailPassword.length <= 100, 'Password must have at most 100 characters');

  @override
  List<Object?> get props => [meuGovPassword, emailPassword];
}
