import 'candidato.dart';

/**
 * Conceito
 * - Interfaces são modelos para implementar métodos e atributos em nossa classe
 * 
 * Regras
 * - Ao implementar uma interface devemos utilizar todos os métodos e atributos.
 * - No dart não existe sintaxe para interface definida, por isso podemos utilizar uma classe concreta ou abstrata.
 * - Podemos implementar mais de uma interface e devemos sobrescrever todos os métodos e atributos contidos na mesma.
 */

main() {
  print('Interfaces\n');

  var rodrigo = Candidato('Rodrigo', ideologia: 'Direita/Esquerda', partido: 'VaiBrasil');
  rodrigo
    ..objetivo = 'ganhar a eleição'
    ..objetivosPessoais()
    ..postagem = 'Vamos acabar com a corrupção no Brasil!'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
