import 'package:atoprev/domain/commom/entity.dart';
import 'package:atoprev/domain/commom/fields/address.dart';
import 'package:atoprev/domain/commom/fields/cpf.dart';
import 'package:atoprev/domain/commom/fields/email.dart';
import 'package:atoprev/domain/commom/fields/identification_document.dart';
import 'package:atoprev/domain/commom/fields/person_name.dart';
import 'package:atoprev/domain/commom/fields/phone.dart';
import 'package:atoprev/domain/commom/unique_id.dart';
import 'package:atoprev/domain/implementations/entities/costumer/fields/costumer_credentials.dart';

class Costumer extends Entity {
  PersonName name;
  Cpf cpf;
  List<Phone> phones;
  Email? email;
  IdentificationDocument? identificationDocument;
  Address? address;
  CostumerCredentials credentials;

  Costumer({
    required UniqueId id,
    required this.name,
    required this.cpf,
    required this.phones,
    this.email,
    this.identificationDocument,
    this.address,
    required this.credentials,
  }) : super(id);
}
