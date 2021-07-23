import 'dart:math';

class People {
  final String name;
  final String surname;
  late final int? _identity;

  People(this.name, this.surname, {int? identity}) {
    this._identity = identity ?? Random().nextInt(99999999);
  }

  get identity => _identity;
}
