import 'cidadao.dart';
import 'conta.dart';
import 'elegivel.dart';
import 'postagem.dart';
import 'presidenciavel.dart';

class Candidato extends Cidadao with Elegivel, Conta implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(nome, {this.ideologia, this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo $objetivo');
  }

  // interfaces

  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no Facebook: $postagem');
  }

  @override
  String? ideologia;
  @override
  String? partido;

  @override
  void ideologiaPolitica() {
    print('$nome é candidato com ideologia de $ideologia pelo partido $partido.');
  }

  // mixin

  @override
  void prestacaoContas() {
    elegivel = super.declaracaoRenda();

    if (elegivel) {
      print('Candidato $nome passou na prestação de contas.\nAutorizado a concorrer nas eleições 2022.');
    } else {
      print(
          'Candidato $nome foi barrado na prestação de contas!\nSaldo $saldo excede a renda declarada para Presidente');
    }
  }
}
