import 'dart:math';

/**
 * Conceito: 
 * - List é uma coleção dinâmica e ordenada de elementos entre colchetes [] 
 * - forEach: Aplica a função anonima a cada elemento da nossa coleção
 * - Too array é um List<?> 
 */

listForEach() {
  print('List --------------- ForEach\n');

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
  List<dynamic> lista = List.filled(2, null);
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
  print('List --------------- Expand\n');

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
  print('List --------------- Map\n');

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
  print('');
}

/**
 * Conceito - Every
 * - Faz o teste em todos elementos da lista com operado lógico && retornando (true ou false)
 * - Todos os item da lista devem atender a condição para TRUE
 */

listEvery() {
  print('List --------------- Every\n');

  List<int> inteiros = [0, 1, 2, 3, 4, 5];
  bool resultado = inteiros.every((e) => e >= 0);
  print(resultado);

  List<String> textos = List.from(['Rodrigo', 'Felipe', 'João']);
  resultado = textos.every((e) => e.contains('e'));
  print(resultado);
  print('');
}

/**
 * Conceito - Where
 * - Filtra os elementos de uma coleção criando uma nova do mesmo tamanho ou menor
 */

listWhere() {
  print('List --------------- Where\n');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  print(idades.where((e) => e is int)); //NOTE - retorno em Iterable
  print(idades.where((e) => e is int).toList()); //NOTE - retorno em List
  print(idades.whereType<int>());
  List<int> adultos = idades.where((e) => e > 17).toList();
  var crianca = idades.singleWhere((e) => e < 12, orElse: () => 0);
  //NOTE - orElse => evita erros caso a condição não seja atendida
  int menor = idades.lastWhere((e) => e.toString().startsWith('0'), orElse: () => 0);
  print('Adultos: $adultos - Criança: $crianca - Menor: $menor\n');
}

/**
 * Conceito - Reduce
 * - Compara os elementos da coleção, retornando 1 único elemento resultante
 * - Ao interagir com os elementos o indice ) se torna o anterior, indice 1 se torna o atual.
 */

listReduce() {
  print('List --------------- Reduce\n');
  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);

  //NOTE - o retorno será o próximo anterior
  int resultado = numerosPares.reduce((previous, current) {
    print('Previous: $previous + Current: $current');
    return previous + current;
  });
  print(resultado);

  List<bool> boleanos = [true, false, !true, !false];
  bool and = boleanos.reduce((ant, atu) => ant && atu);
  bool or = boleanos.reduce((ant, atu) => ant || atu);
  print('and: $and - or: $or');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  int maisNovo = idades.reduce((ant, atu) => (ant > atu) ? atu : ant);
  int maisVelho = idades.reduce((ant, atu) => (ant < atu) ? atu : ant);
  int media = idades.reduce((a, c) => a + c);
  print('mais novo: $maisNovo - mais velho: $maisVelho - média: ${(media / idades.length).toStringAsFixed(1)}\n');
}

/**
 * Conceito - Fold
 * - Compara os elementos da coleção, retornando 1 único elemento resultante
 * - O valor inicial se torna o anterior e o indice 0 se torna o atual.
 */

listFold() {
  print('List --------------- Fold\n');

  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);
  int valorInicial = 10;
  int resultado = numerosPares.fold(valorInicial, (previousValue, current) {
    print('$previousValue + $current');
    return previousValue + current;
  });
  print('$resultado\n');

  print(numerosPares);
  valorInicial = 30;
  resultado = numerosPares.fold(valorInicial, (previous, current) {
    print('$previous - $current');
    return previous - current;
  });
  print('$resultado\n');
}

main() {
  listForEach();
  listExpand();
  listMap();
  listEvery();
  listWhere();
  listReduce();
  listFold();
}
