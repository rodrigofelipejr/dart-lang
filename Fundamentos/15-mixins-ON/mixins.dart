import 'mc.dart';
import 'musico.dart';

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
  print('Mixin ON\n');

  Musico musico = Musico();
  musico.executar(); //Compõe..

  print('');

  Mc mc = Mc();
  mc.executar(); // Mixa..
}
