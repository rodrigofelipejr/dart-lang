/**
 * Conceito - Async
 * 
 * Síncrona:
 * - Operações síncronas: Bloqueiam a execução até que seja concluída.
 * - Funções síncronas: Executa somente operações síncronas.
 * 
 * Assíncrona:
 * - Operação assíncronas: Permitem executar outras operações enquanto são processadas.
 * - Funções assíncronas: Executam ao menos uma operação assíncrona e operações síncronas.
 * 
 * Await:
 * - Indica a espera de uma operação assíncrona, conclusão de uma future.
 * 
 * Async:
 * - Deve ser utilizado em toda função que possui uma operação assíncrona (com await)
 */

/**
 * Funções assíncronas
 */

Future<String> task([int time = 1]) async {
  var msg = await status(time: time);
  return 'Status: $msg';
}

Future<String>? status({int time = 1}) {
  try {
    Future.error('Tempo insuficiente para o load programado.');
    // if (time < 4) throw Exception('Tempo insuficiente para o load programado.');
    return Future.delayed(Duration(seconds: time), () => "Primeira tarefa finalizada!\n");
  } catch (e) {
    print('catch: $e');
    return null;
  }
}

/**
 * Funções síncronas
 */

void countdown({int seconds = 3}) {
  print('Loading...');
  for (var i = 1; i <= seconds; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == seconds) print('\nComplete!');
    });
  }
}

main() async {
  print('Async Await\n');

  countdown(seconds: 3); // função síncrona
  print(await task(3)); // função assíncrona
}
