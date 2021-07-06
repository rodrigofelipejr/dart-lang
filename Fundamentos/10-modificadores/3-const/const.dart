import 'brasil.dart';

/**
 * Const
 * - Inicializada em tempo de compilação, deve ser declarada com valor constante
 * - Ao nível de classes deve ser estática para ficar disponível na classe
 * - Em coleções const todo o conteúdo deve ser constante
 * Objeto imutável
 * - O construtor deve ser constante
 * - As variáveis devem ser final ou static const
 */

main() {
  print('Modificadores (Const)\n');

  const pi = 3.14;
  double raio = 2;
  double resultado = pi * (raio * raio);
  print('Resultado: $resultado \n');

  final numeros = [raio, 3.5];
  numeros.add(resultado);
  print('${numeros}\n');

  final dynamic list = const [0, 1];
  //list.add(2); //NOTE - Cannot add to an unmodifiable list
  print('${list}\n');

  //NOTE - Todos os elementos devem ser constants
  const listConst = [1, 2, pi];
  // listConst.add(pi); //NOTE - Cannot add to an unmodifiable list
  print('${listConst}\n');

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 1;
    print('Contagem: ${constante + indiceFinal}');
  }

  var pais = Brasil(-15.792371, -47.882326);
  print('\naís: $pais - Capital: ${Brasil.capital} - Latitude: ${pais.latitude} - Longitude: ${pais.longitude}\n');
  print('Estados: ${Brasil.estados}');

  // pais.latitude = 0; //NOTE - 'latitude' can't be used as a setter because it's final.
  // pais.capital = ''; //NOTE - Constant variables can't be assigned a value.
}
