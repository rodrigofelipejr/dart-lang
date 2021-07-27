import 'dart:async';

/**
 * Conceito - Stream
 * - Stream é uma forma de monitorar eventos.
 * - Ao adicionar eventos na stream os ouvintes serão notificados.
 * - As streams fornecem uma sequencia assíncrona de dados. Para processar uma stream use await() ou listen().
 * - Existem dois tipos de stream: assinatura única(subscription) ou transmissão(broadcast).
 * - Stream é uma sequencia com vários Futures. Ao invés de obter um evento solicitado (Future), a stream informa que há um evento quanto está pronto. 
 * 
 * stream
 * - Fluxo que a classe StreamController() está monitorando.
 * 
 * add()
 * - Adiciona eventos na stream notificando os ouvintes que estão monitorando.
 * 
 * listen()
 * - Inscreve um ouvinte na stream para aguardar notificações de eventos.
 * - onData: notifica o assinante com eventos de dados da stream, se for nulo, nada acontece.
 * - onError: tratamento de eventos com erro e possível rastreamento do Stack Trace. Se omitido erros serão considerados exceptions!
 * - onDone: evento chamado quando a stream é fechada.
 * - cancelOnError: a assinatura é cancelada automaticamente ao receber um evento de erro.
 */

/**
 * Conceito
 */

conceito() {
  print('Stream - Conceito\n');

  List<dynamic> list = [];

  //NOTE - 1º passo - controlador
  final controller = StreamController<dynamic>();

  //NOTE - 2º passo - stream (encapsulador)
  final stream = controller.stream;

  //NOTE - 3º passo - inscrição do ouvinte na stream
  stream.listen(
    (onData) {
      print('onData: $onData');
      list.add(onData);
    },
    onDone: () {
      print(list);
      print('stream closed...');
    },
  );

  //NOTE - 4º passo - adicionar um evento a stream
  controller.sink.add('Rodrigo');
  controller.sink.add(28);
  controller.sink.add(1.70);
  controller.sink.add(false);
  controller.close();

  print('monitoring...');
  print('');
}

/**
 * Model
 */

class Counter {
  var _counting = 1;
  var end;
  var error;

  final _controller = StreamController<int>();

  //NOTE - não exponha o controlador, exponha as interfaces
  Sink<int> get sink => _controller.sink;
  //NOTE - para termos mais de um ouvinte => broadcasts
  Stream<int> get stream => _controller.stream.asBroadcastStream();

  Counter({this.end = 5, this.error = 3}) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _counting < end ? sink.add(_counting) : sink.close();
      _counting++;

      if (_counting == error) _controller.addError('Erro intencional');
      if (_counting > end) timer.cancel();
    });
  }
}

model() {
  print('Stream - Model\n');

  // criando stream
  var myStream = Counter(end: 5, error: 3).stream;

  // adicionando inscrito na stream
  final subscriber1 = myStream.listen(
      (event) {
        print('subscriber1: $event');
      },
      onError: (error) {
        print('subscriber1: $error');
      },
      cancelOnError: false,
      onDone: () {
        print('subscriber1: complete');
      });

  //NOTE - modificar eventos

  var pairs = (e) => e % 2 == 0;
  var map = (e) => '$e é par';

  final subscriber2 = myStream.where(pairs).map(map).listen(
      (event) {
        print('subscriber2: $event');
      },
      onError: (error) {
        print('subscriber2: $error');
      },
      cancelOnError: false,
      onDone: () {
        print('subscriber2: complete');
      });

  //NOTE - gerencias ouvintes

  for (var i = 0; i <= 3; i++) {
    Future.delayed(Duration(seconds: 1), () {
      if (i == 1) subscriber1.pause();
      if (i == 2) subscriber1.pause();
      if (i == 3) subscriber1.cancel();
    });
  }
}

/**
 * Métodos
 */

methods() async {
  print('Stream Métodos e Ouvintes\n');

  var stream = Stream<dynamic>.periodic(Duration(seconds: 1), (e) => ++e).take(5).asBroadcastStream();
  stream = stream.takeWhile((e) => e <= 5).skipWhile((e) => e > 3).take(3).map((e) => e.toString().padLeft(2, '0'));

  // ouvintes
  stream.listen((event) {
    print('listen: $event');
  }, onDone: () {
    print('contagem finalizada!');
  });

  //NOTE - o forEach também é um ouvinte
  //stream.forEach((e) => print('ForEach: $e'));

  // await for (dynamic event in stream) {
  //   print('ForIn: $event');
  // }

  // List<dynamic> events = await stream.toList();
  // print(events);

  Future<List<dynamic>> futureEvents = stream.toList();
  print(await futureEvents);
}

main() {
  // conceito();
  // model();
  methods();
}
