/**
 * Conceito - Feature
 * - É um objeto que retorna um valor ou erro, resultado de uma execução assíncrona/future
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

String task([int time = 1]) {
  var msg = status(time: time);
  return 'Status $msg';
}

Future<String> status({int time = 1}) {
  return Future.delayed(Duration(seconds: time), () => "Segunda tarefa finalizada!\n");
}

void newTask([int time = 1]) {
  Future.delayed(Duration(seconds: time), () => print("Primeira tarefa finalizada!\n"));
}

void exceptionTask([int time = 1]) =>
    Future.delayed(Duration(seconds: time), () => throw Exception('Erro intencional'));

main() {
  print('Features\n');
  print(task(4));
  newTask(4);
  exceptionTask(5);
  countdown();
}
