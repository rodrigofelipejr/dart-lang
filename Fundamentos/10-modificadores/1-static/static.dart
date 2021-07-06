import 'calculos.dart';

/**
 * Static: 
 * A variável estática fica disponível na própria classe em vez de suas instâncias/objetos.
 * Em métodos estáticos, devemos utilizar variáveis estáticas da classe.
 * Variáveis estáticas pode sem acessadas sem precisar instâncias classes/objetos
 */

main() {
  print('Modificadores (Static)\n');

  double raio = 5;

  var calculos1 = Calculos();
  print(calculos1.pi);
  print(calculos1.areaCirculo(raio));

  print('');

  var calculos2 = Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  print('');

  print(
      'Retornos iguais: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'Sim' : 'Não'}, mas com métodos diferentes!\n');

  print('Instâncias consomem ${identical(calculos1, calculos2) ? 'MENOS' : 'MAIS'} memória.\n');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
  print(Calculos.areaCirculoEstatico(raio));
}
