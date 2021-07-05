class Usuario {
  String user, senha;
  String? nome, cargo;
  // int idade;

  Usuario(this.user, this.senha, {this.nome, this.cargo}) {
    this.nome = (nome == null) ? 'semnome' : nome;
    this.cargo = (cargo == null) ? 'Usuário' : cargo;
    print('Construtor resumido com parâmetros nomeados default ${this.toString()}');
  }

  //NOTE - Construtor nomeado

  Usuario.admin(this.user, this.senha, {this.nome}) {
    this.nome = 'Administrador';
    this.cargo = (cargo == null) ? 'Usuário' : cargo;
    print('Construtor resumido com parâmetros nomeados default ${this.toString()}');
  }

  void autenticar() {
    // dados recuperados do banco de dados
    var user = 'rodrigo@gmail.com';
    var senha = 'abc123';

    (this.user == user && this.senha == senha) ? print('Usuário autenticado') : print('Usuário não autenticado');
  }
}
