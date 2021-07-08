import 'abelha.dart';
import 'cao.dart';

/**
 * Métodos (override/sobreposição != overload/sobrecarga)
 * 
 * Construtores
 * - Super se refere ao construtor da classe herdeira
 * 
 * Classe Abstrata
 * - Não podem ser instanciadas, servem como modelo (contrato)
 * - Métodos sem escopo devem ser sobrescrito nas classes herdeiras
 */

main() {
  print('Sobrescrita de métodos, atributos e construtores');

  var cao = Cao.domestico('Cacau', 'Vira-lata', 'Fêmea');
  print('Nome: ${cao.nome} - Raça: ${cao.raca} - Sexo: ${cao.sexo} - Idade: ${cao.idade} - Dócil: ${cao.docil}');
  print('Desenvolvimento: ${cao.desenvolvimento} - Tipo: ${cao.coluna ? 'Vertebrado' : 'Invertebrado'}');

  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();

  print(cao);
  print('${cao.nome} ${cao.docil! ? 'está amigável.' : 'não está amigável.'}\n');

  var abelha = Abelha(true, '2');
  print(abelha.docil);
  abelha.dormir();
}
