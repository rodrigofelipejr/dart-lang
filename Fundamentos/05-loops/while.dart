main() {
  print('Loops (while doWhile)\n');

  //NOTE - While faz o teste antes da execução
  int numero = 5;

  while (numero > 0) {
    print('while: $numero');
    numero--;
  }

  //NOTE - doWhile faz a execução e testa depois
  int contagem = 1;

  do {
    print('doWhile: $contagem');
    contagem++;
  } while (contagem <= 3);

  int multiplo = 4;
  int min = 10;
  int max = 20;
  int resultado = min;

  while (resultado <= max) {
    if (resultado % multiplo == 0) {
      print('Primeiro multiplo de $multiplo entre $min e $max é: $resultado');
      break;
    }
    resultado++;
  }
}
