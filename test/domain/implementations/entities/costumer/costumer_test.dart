import 'package:atoprev/domain/commom/fields/cpf.dart';
import 'package:atoprev/domain/commom/fields/person_name.dart';
import 'package:atoprev/domain/commom/fields/phone.dart';
import 'package:atoprev/domain/commom/unique_id.dart';
import 'package:atoprev/domain/implementations/entities/costumer/costumer.dart';
import 'package:atoprev/domain/implementations/entities/costumer/fields/costumer_credentials.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tests for Costumer', () {
    test('Costumer must be created successfuly', () {
      var name = const PersonName('Name');
      var costumer = Costumer(
        id: UniqueId(),
        name: name,
        cpf: Cpf('52768348066'),
        phones: [Phone('1234567890')],
        credentials: const CostumerCredentials(
          meuGovPassword: '123456',
        ),
        address: null,
        email: null,
        identificationDocument: null,
      );
      expect(costumer.name, name);
    });
  });
}
