import 'dart:math';

main() {
  print('Switch \n');

  String operacao = '%'; // = - * /

  double numeroA = 12;
  double numeroB = 3;

  switch (operacao) {
    case '+':
      print(numeroA + numeroB);
      break;
    case '-':
      print(numeroA - numeroB);
      break;
    case '*':
      print(numeroA * numeroB);
      break;
    case '/':
      print(numeroA / numeroB);
      break;
    default:
      print('Operação inválida');
      break;
  }

  int dia = Random().nextInt(8);

  switch (dia) {
    case 0:
      print('Domingo');
      break;
    case 1:
      print('Segunda');
      break;
    case 2:
      print('Terça');
      break;
    case 3:
      print('Quarta');
      break;
    case 4:
      print('Quinta');
      break;
    case 5:
      print('Sexta');
      break;
    case 6:
      print('Sábado');
      break;
    default:
      print('Dia da semana inválido');
      break;
  }
}
