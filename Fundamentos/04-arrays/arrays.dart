//NOTE - É uma lista dinâmica e ordenada de elementos entre chaves

main() {
  print('Arrays \n');

  var textos = ['Rodrigo', 'Felipe']; // Strings
  var numeros = [1, 2.5, 5, 31, 36]; // dynamic
  var condicoes = [!false, true, false, null]; // bool?

  print('${textos[0]} e ${textos[1]}');
  print('${textos[0]} tem ${numeros[4]} anos');
  print('${textos[1]} ${numeros[3] > 17 ? 'é maior' : 'não é maior'} de idade');
  print('condicoes[3] == null: ${condicoes[3] ?? (condicoes[0]! ? condicoes[1] : condicoes[2])}');

  bool verdadeiro = !false;
  var arrayDinamico = ['texto', [], 3, 1.5, verdadeiro];
  print(arrayDinamico);

  arrayDinamico[0] = textos[0];
  arrayDinamico[1] = ['Martins', 'de', 'Andrade'];
  arrayDinamico[2] = numeros[2];
  arrayDinamico[3] = numeros[1];
  arrayDinamico[4] = !verdadeiro;
  print(arrayDinamico);

  print('Arrays Funções \n');
  arrayDinamico.add(condicoes[2]!);
  print(arrayDinamico);
  arrayDinamico.insert(0, 'Pablo');
  print(arrayDinamico);
  arrayDinamico.removeAt(1);
  print(arrayDinamico);
  arrayDinamico.removeRange(1, 4);
  print(arrayDinamico);
  arrayDinamico.remove('Pablo');
  print(arrayDinamico);
  print(arrayDinamico.length);
  arrayDinamico.clear();
  print('$arrayDinamico == null: ${arrayDinamico == null}');
  print('$arrayDinamico == empty: ${arrayDinamico.isEmpty}');

  // arrayDinamico.length = 1;
  print('$arrayDinamico ?? ${arrayDinamico.contains(null)}');

  var arrayNumeros = [10, 5, 1, 2.5, 7.5];
  print(arrayNumeros);
  arrayNumeros.sort();
  print(arrayNumeros);

  var arrayNome = ['Fernando', 'Leila', 'Bartolomeu'];
  print(arrayNome);
  arrayNome.sort((b, a) => a.compareTo(b));
  print(arrayNome);
}
