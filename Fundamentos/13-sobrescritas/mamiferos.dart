import 'animal.dart';

abstract class Mamiferos extends Animal {
  String sexo;
  late String desenvolvimento;

  Mamiferos.placentarios(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentários';
  }

  Mamiferos.marsupiais(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentários + Bolsa externa';
  }

  Mamiferos.monotremados(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta');
    print('como um ');
  }

  //NOTE - método sem escopo em classes abstratas, devem ser sobrescritos em classes herdeiras
  void reproduzir();
}
