import 'candidato.dart';

/**
 * Mixins - Conceito
 * - Mixin permite implementar métodos e atributos de outras classes
 * 
 * Regras
 * - Devem ser implementados antes das interfaces
 * - Podem ser implementados a partir de uma classe concreta ou abstrata
 * - Não pode implementar uma classe que estenda e extender de uma classe mixin
 * - As classes que possuem métodos iguais serão sobrescritas em ordem até a classe herdeira
 * 
 * Mixin - ON
 * - É obrigatório declarar sua classe como mixin
 * - Restringe o uso de mixin as classes que estendem ou implementam a classe declarada.
 */

main() {
  print('Mixin\n');

  var rodrigo = Candidato('Rodrigo', ideologia: 'Direita/Esquerda', partido: 'vaiBrasil');
  rodrigo
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupção no Brasil!'
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..depositar = 395999
    ..prestacaoContas();
}
