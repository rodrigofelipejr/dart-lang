main() {
  print('Variáveis');

  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;

  var resultado;

  resultado = valorA + valorB + valorC;
  print(resultado);

  var salario = 1000, desconto = 250;
  var conta = salario - desconto;
  print(conta);

  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);

  var text1 = 'Rodrigo';
  var text2 = " Felipe";
  var text3 = '''e
  Junior
  ''';

  var nome = text1 + text2 + text3;
  print(nome);

  var verdadeiro = true;
  var falso = false;

//NOTE - interpolação
  print('verdadeiro $verdadeiro');

  //NOTE - concatenação
  print('false = ' + "$falso");

  //NOTE - descobre o tipo de variável em tempo de execução
  print(''.runtimeType);

  //NOTE - Deve ser atribuída em tempo de compilação e não
  const pi = 3.14;

  String primeiroNome = 'Rodrigo';
  int idade = 36;
  double altura = 1.76;
  bool adulto = false;

  print('\nNome: $primeiroNome \nQtd de letras: ${primeiroNome.length}');
  print('''idade: $idade
  altura: $altura
  adulto: $adulto
  \npi: $pi  
  ''');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'dois';
  variavel = true;
  print(variavel);

  //NOTE - Formatações mais utilizadas
  /*
    backspace => \b
    formfeed => \f
    newline => \n
    return => \r
    tab => \t
  */
}
