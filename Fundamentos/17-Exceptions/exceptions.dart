/**
 * Conceito - Exceptions
 * - Tratamento de exceções
 * - TRY: usado para testar uma lógica
 * - CATCH: captura error na lógica try
 * - ON: captura específicos/conhecidos na lógica try
 * - THROW EXCEPTION: exceção criada pelo usuário e tratada no catch
 * - FINALLY: executado ao final do try/catch, com exceção ou não, utilizado para liberar recursos na lógica try  
 */

/**
 * Quando você desconhece a exceção, use a clausula TRY/CATCH
 */

case1() {
  print('TRY CATCH\n');

  try {
    int result = 1 ~/ 0;
    print('Result: $result');
  } catch (e) {
    print('Exception: $e');
  }
}

/**
 * Quando você conhece a exceção, use a clausula ON
 */

case2() {
  print('\nON\n');
  try {
    int result = 1 ~/ 0;
    print('Result: $result');
  } on IntegerDivisionByZeroException {
    print('Não é possível dividir por zero');
  } catch (e) {
    print('Exception: $e');
  }
}

/**
 * Caso queira descobrir eventos ocorridos antes da exceção, use o Stack Trace
 */

case3() {
  print('\nStack Trace\n');
  try {
    int result = 1 ~/ 0;
    print('Result: $result');
  } catch (e, stack) {
    print('Exception: $e');
    print('Stack Trace: $stack');
  }
}

/**
 * Use finally para tratamentos após execução do Try Catch
 * - Utilizado para liberar recursos utilizados na lógica do Try Catch por exemplo
 */

case4() {
  print('Finally\n');
  try {
    int result = 1 ~/ 0;
    print('Result: $result');
  } catch (e) {
    print('Exception: $e');
  } finally {
    print('Com ou sem exceção finally será executado');
  }
}

/**
 * Use finally para tratamentos após execução do Try Catch
 * - Utilizado para liberar recursos utilizados na lógica do Try Catch por exemplo
 */

case5() {
  print('\nThrow Exception\n');
  try {
    var valueA = 1;
    var valueB = 0;
    double result = valueA / valueB;
    if (result.isInfinite) throw Exception('A variável valorB deve ser != 0');
    print('Result: $result');
  } catch (e) {
    print('Exception: $e');
  } finally {
    print('Com ou sem exceção finally será executado');
  }
}

main() {
  print('Tratamento de Exceções\n');

  case1();
  case2();
  case3();
  case4();
  case5();
}
