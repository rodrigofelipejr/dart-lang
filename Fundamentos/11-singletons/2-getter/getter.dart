import 'pessoa_getter.dart';

/**
 * Singleton
 * - É um padrão de projeto para que exista apenas uma instância da classe
 * - O construtor nomeado privado sem o construtor default impede de instânciar a classe
 * Getter 
 * - A _instancia é privada e acessada através do get 
 */

main() {
  print('Singleton (Getter)\n');

  print(PessoaGetter.instancia.nome);
  PessoaGetter.instancia.nome = 'Rodrigo';
  print(PessoaGetter.instancia.nome);

  var p1 = PessoaGetter.instancia;
  p1.nome = 'Felipe';
  var p2 = PessoaGetter.instancia;
  print(p2.nome);
  print(identical(p1, p2));

  print('');

  print(Service.getInstance.tag);
  Service.getInstance.tag = 'TagA';
  print(Service.getInstance.tag);

  var s1 = Service.getInstance;
  var s2 = Service.getInstance;

  s1.tag = 'TagB';
  print(Service.getInstance.tag);

  s2.tag = 'TagC';
  print(Service.getInstance.tag);

  print(identical(p1, p2));
  print(s2 == Service.getInstance);
}
