import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final String street;
  final String number;
  final String complement;
  final String neighborhood;
  final String city;
  final String state;
  final String zipCode;

  const Address({
    required this.street,
    required this.number,
    required this.complement,
    required this.neighborhood,
    required this.city,
    required this.state,
    required this.zipCode,
  })  : assert(street.length >= 3, 'Street must have at least 3 characters'),
        assert(street.length <= 100, 'Street must have at most 100 characters'),
        assert(number.length >= 1, 'Number must have at least 1 character'),
        assert(number.length <= 10, 'Number must have at most 10 characters'),
        assert(complement.length <= 100, 'Complement must have at most 100 characters'),
        assert(neighborhood.length >= 3, 'Neighborhood must have at least 3 characters'),
        assert(neighborhood.length <= 100, 'Neighborhood must have at most 100 characters'),
        assert(city.length >= 3, 'City must have at least 3 characters'),
        assert(city.length <= 100, 'City must have at most 100 characters'),
        assert(state.length == 2, 'State must have 2 characters'),
        assert(zipCode.length == 8, 'Zip code must have 8 characters');

  @override
  List<Object?> get props => [
        street,
        number,
        complement,
        neighborhood,
        city,
        state,
        zipCode,
      ];
}
