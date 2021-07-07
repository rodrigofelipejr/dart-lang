import 'pessoa_static.dart';

/**
 * Singleton
 * - É um padrão de projeto para que exista apenas uma instância da classe
 * - O construtor nomeado privado sem o construtor default impede de instânciar a classe
 * Static 
 * - A instancia pode ser acessada diretamente  
 */

main() {
  print('Singletos (Static)\n');

  print(PessoaStatic.instancia.nome);
  PessoaStatic.instancia.nome = 'Rodrigo';
  print(PessoaStatic.instancia.nome);

  var p1 = PessoaStatic.instancia;
  var p2 = PessoaStatic.instancia;

  p1.nome = 'Felipe';
  print(PessoaStatic.instancia.nome);

  p2.nome = 'Rafael';
  print(PessoaStatic.instancia.nome);

  print(identical(p1, p2));
  print(p2 == PessoaStatic.instancia);

  print('');

  print(Service.instance.tag);
  Service.instance.tag = 'TagA';
  print(Service.instance.tag);

  var s1 = Service.instance;
  var s2 = Service.instance;

  print('identical: ${identical(s1, s2)}');

  s1.tag = 'TagB';
  print(Service.instance.tag);

  s2.tag = 'TagC';
  print(Service.instance.tag);

  print(identical(p1, p2));
  print(s2 == Service.instance);
}
