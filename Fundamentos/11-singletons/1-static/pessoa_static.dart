class PessoaStatic {
  static final PessoaStatic instancia = PessoaStatic._construtorNomeado();
  String? nome;

  PessoaStatic._construtorNomeado();
}

class Service {
  static final Service instance = Service._();
  Service._();

  String? tag;
}
