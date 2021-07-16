import 'dart:math';

/**
 * Conceito: 
 * - List é uma coleção dinâmica e ordenada de elementos entre colchetes [] 
 * - forEach: Aplica a função anonima a cada elemento da nossa coleção
 * - Too array é um List<?> 
 */

listForEach() {
  print('List ForEach\n');

  var array = [0, 2.5, 5, 7.25, 10];
  array.forEach((e) {
    print('foreach: $e');
  });

  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> boleanos = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  print('\nImplementação: ${frutas.runtimeType}');

  print('\nboleanos[3] ${boleanos[inteiros.length] ? 'verdadeiro' : 'falso'}\n');

  frutas.insert(0, 'Abacaxi');
  frutas.add('Laranja');
  frutas.forEach((e) => print('foreach: $e'));
  print('$frutas\n');

  frutas.removeLast();
  frutas.removeWhere((e) => e == 'Banana');
  frutas.forEach((e) => print('foreach: $e'));
  print('$frutas\n');

  print(frutas.elementAt(2));
  print(frutas.contains('abacaxi')); //NOTE - camelcase

  print('');

  List<num> numeros = List.from(inteiros)..addAll(doubles);
  print(numeros);

  numeros.shuffle();
  print(numeros);

  numeros.sort();
  print(numeros);

  print('');

  // List<dynamic> lista = List.generate(2, (index) => 'a-$index');
  List<dynamic?> lista = List.filled(2, null);
  lista = numeros.take(3).toList();
  print('lista: $lista');

  lista = numeros.take(3).skip(1).toList();
  print('lista: $lista');

  lista = numeros.take(3).skip(1).take(1).toList();
  print('lista: $lista\n');

  //NOTE - geradores de lista
  List<String> listaPreenchida = List.filled(2, 'elemento');
  List<String> listaGerada = List.generate(2, (index) => 'Nome $index');
  List<double> listaPrecos =
      List.generate(5, (i) => double.parse(((i + 1) * Random().nextDouble()).toStringAsFixed(2)));
  listaPrecos.forEach((element) => print('foreach: $e'));

  print('listaPreenchida: $listaPreenchida\nlistaGerada: $listaGerada\nlistaPrecos: $listaPrecos\n');
}

main() {
  listForEach();
}
