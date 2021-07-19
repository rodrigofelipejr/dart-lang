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

/**
 * Conceito - Expand
 * - Cria uma nova lista expandido ou concatenando os elementos 
 */

listExpand() {
  print('List Expand\n');

  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listaFlat = lista.expand((e) => e).toList();
  List<dynamic> listaDuplicada = listaFlat.expand((e) => [e, e]).toList();
  List<num> numeros = [1, 1.25, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  print('listaFlat: $listaFlat \nlistaDuplicada: $listaDuplicada\n');

  List<dynamic> listaDinamica = [];
  print(listaDinamica + [1, 5, 10] + [2, 7]);
  print(listaDinamica = []..addAll(inteiros)..addAll(doubles));
  print(listaDinamica = [0, ...inteiros, 15]); //NOTE - operador spread (espalhar)
  print(listaDinamica = [...[], ...inteiros, if (doubles is List<double>) ...doubles]);
  print(listaDuplicada = [...[], for (var numero in numeros) numero]);
  print('');
}

/**
 * Conceito - Map
 * - Transforma/seleciona os elementos de uma coleção criando uma nova do mesmo tamanho!
 */

listMap() {
  print('List Map\n');

  List<String> frutas = ['Morango', 'Banana', 'Tomate'];
  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) => ++e; //NOTE - e++
  final dobrar = (int e) => e * 2;

  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobrar).toList();
  print(inteirosMapeados);

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (double e) => e * 3;
  final Function moeda = (dynamic e) => 'R\$ ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';
  Function porcentagem(double desconto) => (double valor) => desconto * valor; //NOTE - closure
  // final porcentagem = (double valor) => 0.9 * valor; //NOTE - closure
  List<dynamic> doublesMapeados = doubles.map(triplo).map((e) => porcentagem(0.9)(e)).map((e) => moeda(e)).toList();
  print(doublesMapeados);
}

main() {
  listForEach();
  listExpand();
  listMap();
}
