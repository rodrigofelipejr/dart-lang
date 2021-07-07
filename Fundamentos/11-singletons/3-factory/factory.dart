import 'pessoa_factory.dart';
import 'pessoa_instancia.dart';

/**
 * Singleton
 * - É um padrão de projeto para que exista apenas uma instância da classe
 * - O construtor nomeado privado sem o construtor default impede de instânciar a classe
 * Factory 
 * - Construtor Factory é usado para retornar/manter a instância original.
 * - Construtor Factory é capaz de retornar valores.
 */

singletonFactory() {
  print('Singletons (Factory)\n');

  var p1 = PessoaFactory();
  print(p1.nome);
  p1.nome = 'Rodrigo';
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'Felipe';
  print(p1.nome);

  var p2 = PessoaFactory();
  p2.nome = 'Junior';
  print(PessoaFactory.instancia.nome);
  print(identical(p1, PessoaFactory.instancia));
  print(p1 == PessoaFactory.instancia);
}

singletonInstancia() {
  print('\nSingletons (Instâncias)');
  var p1 = PessoaInstancia(nome: 'Rodrigo');
  print('Nome: ${p1.nome} - Id.: ${p1.identidade}');

  var p2 = PessoaInstancia(nome: 'Felipe', identidade: 12345);
  print('Nome: ${p2.nome} - Id.: ${p2.identidade}');

  p2.nome = 'Rodrigo Felipe';
  print('Nome: ${p1.nome} - Id.: ${p1.identidade}');
  print(identical(p1, p2));
  //NOTE - instância é privada, e não foi criado um getter para acessa-lá, a factory está responsável por isso
  //print(p2 == PessoaInstancia.instancia);
  
}

main() {
  singletonFactory();
  singletonInstancia();
}
