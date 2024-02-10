import 'package:equatable/equatable.dart';

class IdentificationDocument extends Equatable {
  final String number;
  final String issuer;
  final DateTime? issueDate;

  IdentificationDocument({
    required this.number,
    required this.issuer,
    this.issueDate,
  })  : assert(number.length >= 3, 'Number must have at least 3 characters'),
        assert(number.length <= 20, 'Number must have at most 20 characters'),
        assert(issuer.length >= 2, 'Issuer must have at least 2 characters'),
        assert(issuer.length <= 10, 'Issuer must have at most 10 characters'),
        assert(issueDate == null || issueDate.isBefore(DateTime.now()), 'Issue date must be in the past');

  @override
  List<Object?> get props => [number, issuer, issueDate];
}
