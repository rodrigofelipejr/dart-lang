import 'mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao(
    this.nome,
    this.raca,
    String? sexo, {
    String? idade,
    bool? docil = true,
  }) : super(sexo, idade, docil) {
    this.idade = idade ?? 'Indefinido';
    this.sexo = sexo ?? 'Indefinido';
  }

  void acao() {
    print('Late como um Cão!');
  }
}
