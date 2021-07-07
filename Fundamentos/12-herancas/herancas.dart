import 'cao.dart';

/**
 * Herança
 * - Uma classe pode ter somente uma herança
 * 
 * Construtores
 * - Devem obedecer a ordem dos parâmetros
 * - Parâmetros default devem ser nomeados ou posicionados
 * - Tratamento e tipagem de parâmetros deve ser feito na classe herdeira
 */

main() {
  print('Heranças de atributos métodos e construtores\n');

  var cao = Cao('Lipa', 'Pug', 'Fêmea');
  print('Nome: ${cao.nome} - Raça: ${cao.raca} - Sexo: ${cao.sexo} - Idade: ${cao.idade} - Dócil: ${cao.docil}');

  cao
    ..dormir()
    ..alimentar()
    ..acao();

  print('${cao.nome} ${cao.docil! ? 'está amigável' : 'não está amigável'}');
}
