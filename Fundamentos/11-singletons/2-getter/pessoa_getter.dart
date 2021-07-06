class PessoaGetter {
  static final PessoaGetter _instancia = PessoaGetter._construtorNomeado();
  String? nome;

  PessoaGetter._construtorNomeado();

  static PessoaGetter get instancia => _instancia;
}

class Service {
  static final Service _instance = Service._();
  Service._();

  static Service get getInstance => _instance;
  String? tag;
}
