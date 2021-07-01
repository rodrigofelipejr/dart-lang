void semRetorno() {
  print('Funções (void)\n');

  void conceito() {
    print('Função void sem retorno\n');
  }

  void somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print('Soma: $valorA + $valorB = $resultado\n');
  }

  void verificarMaioridade(String nome, int idade) {
    var resposta;

    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }

    print('$nome $resposta de idade\n');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print('Contagem ${(i == 0) ? 'VAI!!' : i}');
    }
    print('\n');
  }

  converterKmParaMilhas(dynamic array) {
    dynamic milha = 0.621271;

    for (dynamic item in array) {
      print('$item \t km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    print('Array convertido arredondado\n');
  }

  conceito();
  somarValores(2, 3);
  verificarMaioridade('Rodrigo', 18);
  contagemRegressiva(5);
  converterKmParaMilhas([1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]);
}

comRetorno() {
  print('Funções (return)\n');

  String conceito() {
    return 'Função com retorno';
  }

  String somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return 'Soma: $valorA + $valorB = $resultado\n';
  }

  String verificarMaioridade(String nome, int idade) {
    var resposta;

    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }

    return '$nome $resposta de idade\n';
  }

  String contagemRegressiva(int numero) {
    var resultado;

    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print('Contagem $i') : resultado = 'Contagem Vai!!!\n';
    }
    return resultado;
  }

  converterKmParaMilhas(dynamic array) {
    dynamic milha = 0.621271;

    for (dynamic item in array) {
      print('$item \t km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    return 'Array convertido arredondado\n';
  }

  print(conceito());
  print(somarValores(2, 4));
  print(verificarMaioridade('Rodrigo', 13));
  print(contagemRegressiva(3));
  print(converterKmParaMilhas([1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]));
}

main() {
  semRetorno();
  comRetorno();
}
