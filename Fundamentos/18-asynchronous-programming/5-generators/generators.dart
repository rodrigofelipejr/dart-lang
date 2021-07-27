/**
 * Conceito - Generators
 * São funções geradoras que produzem sequencias de valores usando:
 * - Funções síncronas => retornam Iterable;
 * - Funções assíncronas => retornam Streams;
 */

/**
 * *yield
 * - Utilizado em funções geradoras síncronas e assíncronas
 * - Adiciona um valor ao fluxo de saída da função assíncrona * retornando sem encerrar a função!
 */

generatingFunctions() {
  print('Funções geradoras\n');

  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  print(funcaoSincrona(5));

  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  funcaoAssincrona(5).forEach((e) => print('forEach: $e'));
  print('');
}

/**
 * *yield*
 * - Utilizado em funções geradoras síncronas e assíncronas recursivas
 * - Você poderá melhorar seu desempenho com yield* utilizando gerador for recursivo 
 */

generatingFunctionsRecursivas() {
  print('Funções geradoras recursivas\n');

  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    for (int i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoSincrona(i - repeticaoMaxima);
    }
  }

  print(funcaoSincrona(3));

  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    for (int i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoAssincrona(i - repeticaoMaxima);
    }
  }

  funcaoAssincrona(3).forEach((e) => print('forEach: $e'));
  print('');
}

tratamentoExceptions() async {
  print('Funções geradoras tratamento de exceções\n');

  Future<int> streamSoma(Stream<int> stream) async {
    var soma = 0;

    // await for (var value in stream) {
    //   soma += value;
    // }
    // return soma;

    try {
      await for (var value in stream) {
        soma += value;
      }
    } catch (e) {
      print(e);
      return -1;
    }

    return soma;
  }

  Stream<int> streamContagem(int termino, {int erro = 0}) async* {
    for (var i = 1; i <= termino; i++) {
      // yield i;
      if (i == erro) {
        throw Exception('Exception intencional');
      } else {
        yield i;
      }
    }
  }

  var stream = streamContagem(10, erro: 3);
  var soma = await streamSoma(stream);

  // print(stream);
  // stream.forEach((e) => print('forEach: $e'));

  print(soma);
}

main() {
  print('Generators\n');
  // generatingFunctions();
  // generatingFunctionsRecursivas();
  tratamentoExceptions();
}
