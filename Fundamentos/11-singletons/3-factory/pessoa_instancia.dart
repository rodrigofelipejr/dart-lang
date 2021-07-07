import 'dart:math';

class PessoaInstancia {
  static PessoaInstancia? _instancia; //NOTE - Retirar underline para acessar o singleton
  String nome;
  late final int _identidade;

  factory PessoaInstancia({String nome = 'indefinido', int? identidade}) {
    identidade = (identidade == null) ? Random().nextInt(99999999 + 1) : identidade;
    return _instancia ??= PessoaInstancia._construtorNomeado(nome, identidade);
  }

  PessoaInstancia._construtorNomeado(this.nome, this._identidade) {
    //NOTE - Configs. iniciais
  }

  int? get identidade => _identidade;
}
