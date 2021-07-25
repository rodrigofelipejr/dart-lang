import 'dart:collection';

/**
 * Conceito - LinkedHashSet
 * - Set é uma coleção de elementos únicos e ordenados entre chaves {}
 * - Não temos acesso ao indice 
 * - O import da lib dart:collection é necessário 
 */

linkedHashSet() {
  print('LinkedHashSet == Set\n');

  Set<int> setInt = Set();
  print('Implementação: ${setInt.runtimeType}'); // _CompactLinkedHashSet<int>
  // setInt[0] = 0; //NOTE - não temos acesso a indice

  setInt.add(13);
  setInt.add(13);
  // setInt.add(null); //NOTE - error
  setInt.add(17);
  setInt.add(17);
  setInt.add(18);
  setInt.add(23);
  print(setInt);

  setInt.remove(13);
  print(setInt);

  for (var i = 0; i < setInt.length; i++) {
    print('for: ${setInt.elementAt(i)}');
  }

  for (var element in setInt) {
    print('for in: $element');
  }

  setInt.forEach((element) {
    print('forEach: $element');
  });

  print('');

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};

  print(listaA.difference(listaB));
  print(listaA.union(listaB));
  print(listaA.intersection(listaB));
  print(listaA.lookup(0));
  print(listaA.lookup(99)); //NOTE - return null if not exists
}

/**
 * Conceito - HashSet
 * - HashSet é uma coleção  de elementos únicos e desordenados
 */

hashSet() {
  print('HasSet\n');

  HashSet<String> hashSet1 = HashSet();
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();

  print(hashSet1.runtimeType); // _HashSet<String>
  print(hashSet2.runtimeType); // _HashSet<int>

  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');
  print('$hashSet1');
  // hashSet1.add(null); //NOTE - error

  hashSet2.add(1);
  hashSet2.add(2);
  hashSet2.add(3);
  print('$hashSet2'); //NOTE - apenas lista com 1 casa decimal ficara ordenada

  hashSet3.add(11);
  hashSet3.add(22);
  hashSet3.add(33);
  print('$hashSet3'); //NOTE - lista com 2 casas decimais ficam desordenadas

  for (var i = 0; i < hashSet1.length; i++) {
    print('for hashSet1: ${hashSet1.elementAt(i)}');
  }

  for (var element in hashSet2) {
    print('for in hashSet2: $element');
  }

  hashSet3.forEach((element) {
    print('forEach hashSet3: $element');
  });

  print('');
}

/**
 * Conceito - SplayTreeSet
 * - SplayTreeSet organiza automaticamente os elementos em ordem crescente
 * - POr ser uma arvore de comparações não pode conter elementos null
 */

splayTreeSet() {
  print('SplayTreeSet\n');

  SplayTreeSet<String> splayTreeSet = SplayTreeSet();
  print('Implementação: ${splayTreeSet.runtimeType}');

  splayTreeSet.add('info 1');
  splayTreeSet.add('info 3');
  splayTreeSet.add('info');
  splayTreeSet.add('info2');
  // splayTreeSet.add(null);
  print(splayTreeSet);

  print('');

  for (var i = 0; i < splayTreeSet.length; i++) {
    print('for splayTreeSet: ${splayTreeSet.elementAt(i)}');
  }

  print('');

  for (var element in splayTreeSet) {
    print('for in: $element');
  }

  print('');

  splayTreeSet.forEach((element) => print('forEach: $element'));

  print('');
}

main() {
  linkedHashSet();
  hashSet();
  splayTreeSet();
}
