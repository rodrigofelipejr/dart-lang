import 'dart:collection';

/**
 * Conceito - Queue
 * - Coleção ordenada entre chaves {}, sem index, que manipula o início e o fim da lista
 */

queue() {
  //NOTE - import 'dart:collection';
  Queue<int> queue = Queue();
  print(queue.runtimeType); //ListQueue<int>
  queue.addAll([20, 30]);
  queue.add(40);
  print(queue);
  queue.addFirst(10);
  print(queue);
  queue.addLast(50);
  print(queue);
  queue.add(60); // add after last item queue
  print(queue);
  queue.remove(60); // remove last item queue
  print(queue);
  queue.removeLast();
  print(queue);
  queue.removeFirst();
  print(queue);
  queue.forEach((e) => print(e));
}

main() {
  print('Queue\n');
  queue();
}
