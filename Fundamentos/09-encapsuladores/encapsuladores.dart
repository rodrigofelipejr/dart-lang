import 'conta.dart';
import 'usuario.dart';

///
/// Encapsuladores são usados para proteger os atributos e variáveis
/// Get é usado para acessar e Set é usado para alterar
/// Atributos ou variáveis com underline são privados. Ex.: _saldo
///

main() {
  print('Encapsuladores\n');

  var usuario = Usuario('Rodrigo', '123dev');
  print('Usuário: ${usuario.nome} - Senha: ${usuario.senha}');

  usuario.senha = '1234';
  print('Usuário: ${usuario.nome} - Senha: ${usuario.senha}');

  usuario
    ..senha = '1111'
    ..alteracao = true
    ..senha = '2222';
  print('Usuário: ${usuario.nome} - Senha: ${usuario.senha}\n');

  var conta = Conta('Ana Paula');
  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 550
    ..saque = 500;

  print('');

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;

  print('');

  conta
    ..saque = 950
    ..saque = 850;
  print('${conta.informacao}\n');

  print('');

  Conta contaVip = Conta.vip('João de Barro', limite: 12500);
  contaVip
    ..deposito = 15000
    ..saque = 15000
    ..limite = 15000
    ..saque = 15000;

  print('${contaVip.informacao}');
}

class teste {
  late String _name;

  //NOTE - Getter padrões
  String get name => _name;

  //NOTE - Setter padrões
  set name(String name) {
    _name = name;
  }
}
