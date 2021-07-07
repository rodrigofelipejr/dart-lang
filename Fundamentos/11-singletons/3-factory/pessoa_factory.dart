import 'dart:math';

class PessoaFactory {
  static final PessoaFactory instancia = PessoaFactory._construtorNomeado('indefinido');
  String? nome;

  factory PessoaFactory() => instancia;

  PessoaFactory._construtorNomeado(this.nome) {
    //NOTE - configs. iniciais
  }
}
