/**
 * Conceito - Then
 * - Then registra um callback que será chamado quando a Future for concluída
 * - onValue: valor passado ao termino da Future
 * - catchError: se omitido é lançado como uma exception
 *    - test: se qualquer lógica retornar true é lançada uma exception
 * - whenComplete: Chama uma função anônima ao termino do Future
 */

/**
 * Funções assíncronas
 */

Future<String> task([int time = 1]) {
  return status(time: time)
      .then((value) => '\nStatus: $value')
      .catchError(
        (onError) => '',
        // print('CatError: $onError'),
        test: (onError) => onError is Future && onError.runtimeType == Future,
      )
      .whenComplete(
        () => print('Future complete!'),
      );
}

Future<String> status({int time = 1}) {
  return Future.delayed(Duration(seconds: time), () => Future.error('Erro intencional'));
  // return Future.delayed(Duration(seconds: time), () => "Primeira tarefa finalizada!\n");
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

main() {
  print('Then\n');
  countdown(seconds: 3);
  task(4).then((String value) => print(value.isNotEmpty ? value : 'Status: nulo'));
}
