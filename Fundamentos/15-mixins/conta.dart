abstract class Conta {
  double? _saldo;
  double salario = 33000;

  get saldo => _saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => _saldo! / 12 < salario;
}
