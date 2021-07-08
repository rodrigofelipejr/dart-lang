import 'mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao.domestico(
    this.nome,
    this.raca,
    String sexo, {
    idade = 'indefinida',
    bool docil = true,
  }) : super.placentarios(
          sexo,
          idade,
          docil: docil,
        );

  //NOTE - é possível definir os parâmetros sem especificar a tipagem,
  // no entanto esta prática torna o código menos legível.
  Cao.selvagem(
    this.nome,
    this.raca,
    sexo, {
    idade = 'indefinida',
    docil = false,
  }) : super.placentarios(
          sexo,
          idade,
          docil: docil,
        );

  //NOTE - sobrescreve um método da classe herdada
  @override
  void dormir() {
    // super.dormir();
    print('Dorme como um Cão!');
  }

  // @override //NOTE - é opcional
  void alimentar() {
    super.alimentar(); //NOTE - implementa o escopo do método herdado (super)
    print('Cão!');
  }

  @override
  void reproduzir() {
    print('Reproduz como um Cão.');
  }

  void acao() {
    print('Late como um Cão.');
  }

  //NOTE - Toda classe extends de um Object, ao user a função print a função retorna (Instance of 'Object')
  @override
  String toString() {
    return 'Instance of ${this.runtimeType} - Nome: $nome - Raça: $raca - Sexo: $sexo';
  }
}
