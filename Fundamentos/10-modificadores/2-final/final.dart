import 'pessoa.dart';

/**
 * Final
 * Inicializada apenas quando acessada em tempo de execução, deve ser declarada!
 * Em coleções final nem todo o conteúdo será final
 */

main() {
  print('Modificadores (Final)\n');

// Objeto em queda livre leva 5s para chagar ao solo. Qual a velocidade máxima do objeto?

  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo;

  print('Velocidade máxima $velocidade m/s\n');

  for (int i = 1; i <= 3; i++) {
    final index = i;
    print('Contagem: $index');
  }

  print('');

  var pessoa = Pessoa('Rodrigo', ['Felipe', 'Junior']);
  pessoa.nome = 'Rodrigo Felipe';
  // pessoa.familiares = []; //NOTE - ERROR => final

  print('Nome: ${pessoa.nome} - Familiares: ${pessoa.familiares}');
}
