import 'classes/animal.dart';
import 'classes/objeto.dart';
import 'classes/pessoa.dart';
import 'classes/usuario.dart';

main() {
  print('Construtores\n');
  Objeto objeto = Objeto();
  objeto.nome = 'Mesa';
  print('Nome: ${objeto.nome}');

  print('');

  Animal animal = Animal('Cacau', 'Vira Latas', 12);
  print('Nome: ${animal.nome} - Raca: ${animal.raca} - Idade: ${animal.idade}');

  print('');

  Pessoa pessoa = Pessoa('Felipe', 28, altura: 1.72);
  print('Nome: ${pessoa.nome} - Idade: ${pessoa.idade} - Cor: ${pessoa.cor} - Altura: ${pessoa.altura}');

  print('');

  Usuario usuario = Usuario('rodrigo@gmail.com', 'abc123', nome: 'Rodrigo');
  print('Usuário: ${usuario.user} - Senha: ${usuario.senha} - Nome: ${usuario.nome} - Cargo: ${usuario.cargo}');
  usuario.autenticar();

  Usuario admin = Usuario.admin('admin@gmail.com', '123asd', nome: 'Felipe');
  print('Usuário: ${admin.user} - Senha: ${admin.senha} - Nome: ${admin.nome} - Cargo: ${admin.cargo}');
  admin.autenticar();
}
