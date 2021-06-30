main() {
  print('Ternário \n');

  if (true)
    print('Verdadeiro');
  else
    print('Falso');

  true ? print('Verdadeiro') : print('Falso');
  !true ? print('Verdadeiro') : print('Falso');

  int age = 13;
  print(age < 14
      ? 'criança'
      : age < 18
          ? 'adolescente'
          : 'adulto');

  int nota = 88;
  String resultado = nota < 40
      ? 'Reprovado'
      : nota < 70
          ? 'Recuperação'
          : 'Aprovado';
  print(resultado);

  int numero = 12;
  print('Número $numero é ${numero % 2 == 0 ? 'par' : 'impar'} e ${numero >= 0 ? 'positivo' : 'negativo'}');

  int multiplo = 3;
  print('Número: $numero ${numero % multiplo == 0 ? 'é' : 'não é'} múltiplo de $multiplo');

  int year = 2028;
  print('Ano: $year ${((year % 4 == 0) || (year % 400 == 0 && year % 100 != 0)) ? 'é bissexto' : 'não é bissexto'}');
}
