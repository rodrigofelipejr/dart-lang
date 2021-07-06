main() {
  print('Operadores Lógicos (&& || !)');

  var verdadeiro = false;
  print(verdadeiro);
  print(!verdadeiro);

  bool falso = true;
  print(falso);
  print(!falso);

  print('Verdadeiro: $verdadeiro - Falso: $falso');
  print('Operador (!) !true: ${!true} !false: ${!false}');

//NOTE - operador || precisa somente de uma afirmação para retorna true

  bool teste1 = verdadeiro || verdadeiro;
  bool teste2 = verdadeiro || falso;
  // ignore: dead_code
  bool teste3 = falso || falso;

  print('teste1: $teste1 - teste2: $teste2 - teste3: $teste3');

//NOTE - operador && somente se ambas afirmações for true o retorno será true

  bool teste4 = verdadeiro && verdadeiro;
  bool teste5 = verdadeiro && falso;
  bool teste6 = falso && falso;

  print('teste4: $teste4 - teste5: $teste5 - teste6: $teste6');

  bool operacao = (1 <= 2) && (3 > 2);
  print('(1 <= 2) && (3 > 2): $operacao');

  operacao = !(1 > 2) && ((3 < 2) || false);
  print('!(1 > 2) && ((3 < 2) || false): $operacao');
}
