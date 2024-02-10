import 'package:equatable/equatable.dart';

class Phone extends Equatable {
  final String number;
  final String? description;

  Phone(this.number, {this.description})
      : assert(number.length >= 3, 'Phone number must have at least 3 characters'),
        assert(number.length <= 20, 'Phone number must have at most 20 characters'),
        assert(int.tryParse(number) != null, 'Phone number must have only numbers'),
        assert(description == null || description.length >= 3, 'Description must have at least 3 characters'),
        assert(description == null || description.length <= 50, 'Description must have at most 50 characters');

  @override
  List<Object?> get props => [number, description];
}
