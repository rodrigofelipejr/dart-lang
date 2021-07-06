import 'dart:math';

class Conta {
  bool alterarLimite = false;
  late int _numeroConta;
  late String _nome;
  double _saldo = 0;
  double _limite = 500;

  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('Conta número: "${_numeroConta}" - Titular: "${_nome}" - Criado com sucesso!');
  }

  Conta.vip(String nome, {double limite = 10000}) {
    this.alterarLimite = true;
    this._limite = limite;
    this._nome = nome;
    this._numeroConta = Random().nextInt(999);
    print('Conta número: "${_numeroConta}" - Titular: "${_nome}" - Criado com sucesso!');
  }

  //NOTE - Getter padrão
  int get numeroConta => this._numeroConta;
  double get saldo => this._saldo;
  double get limite => this.limite;

  //NOTE - Setter padrão
  set limite(double value) {
    if (alterarLimite) {
      this._limite = value;
      print('Limite alterado para o valor: $_limite');
    } else {
      print('Permissão negada: Alteração: Limite do titular');
    }
  }

  //NOTE - Getter e Setter customizáveis
  String get informacao => 'Titular: ${_nome} - Núm. Conta: ${_numeroConta} - Saldo atualizado: ${_saldo}';
  set deposito(double value) {
    if (value > 0) {
      this._saldo += value;
      print('Deposito: $value - Sado atualizado: $_saldo');
    }
  }

  set saque(double value) {
    if (value > 0 && value <= _limite) {
      if (value <= _saldo) {
        this._saldo -= value;
        print('Saque: $value - Saldo atualizado: $_saldo');
      } else {
        print('Saldo valor: $_saldo insuficiente para saque de $value');
      }
    } else {
      print('Limite para saque $_limite');
    }
  }
}
