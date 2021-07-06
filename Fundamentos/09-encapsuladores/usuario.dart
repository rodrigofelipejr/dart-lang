class Usuario {
  bool alteracao = false;
  String nome;
  late String _senha;

  Usuario(this.nome, String senha) {
    this._senha = senha;
  }

  //NOTE - Getter padrão
  String get senha => _senha;

  //NOTE - Setter padrão
  set senha(String value) {
    if (alteracao == true) {
      _senha = value;
      print('Atualizado com sucesso');
    } else {
      print('Erro: Acesso negado');
    }
  }
}
