main() {
  print('Loops (For ForIn)\n');

  for (var i = 1; i <= 3; i++) {
    print('Contagem: $i');
  }

  for (var i = 15; i >= 0; i -= 5) {
    print('Regressiva: $i');
  }

  String name = 'Rodrigo';
  int number = 0;

  for (var i = number; i < name.length; i++) {
    if (i % 2 == 0) {
      print('$i é par');
    } else {
      print('$i é impar');
    }

    print('$i ${(i % 2 == 0 ? 'é par' : 'é impar')}');
  }

  for (var i = 0; i < name.length; i++) {
    print('${name.substring(i, i + 1)}');
  }

  for (int i = 5; i <= 12; i++) {
    if (i == 0) {
      print('$i é múltiplo de todos os números');
    } else if (i % 2 == 0 && i % 3 == 0) {
      print('$i é múltiplo de 2 e 3');
    } else if (i % 3 == 0) {
      print('$i é múltiplo de 3');
    } else if (i % 2 == 0) {
      print('$i é múltiplo de 2');
    } else {
      print(i);
    }
  }

  var frutas = ['tomate', 'manga', 'pera', 'maçã'];
  for (int i = 0; i < frutas.length; i++) {
    print('for: $i - ${frutas[i]}');
  }

  //NOTE - Percorremos a lista por completo de forma crescente
  for (var fruta in frutas) {
    print('forin: $fruta');
  }
}
