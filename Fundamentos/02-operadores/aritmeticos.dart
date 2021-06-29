main() {
  print('Operadores aritméticos (+ - * / ~/ %)');
  print('Operadores incremento (+= ++)');
  print('Operadores assignação (= ??)');

  var peso = 10;

  peso = peso + 5;
  print(peso);

  peso += 5;
  print(peso);

  peso++;
  print(peso);

  var a, b, c, d, e, f;

  a = 3;
  //NOTE - incrementa A, antes que B receba o valor;
  b = ++a;
  print('a: $a - b: $b');

  c = ++a / --b;
  print('a: $a - b: $b - c:$c');

  //NOTE - divisão retorna número inteiro
  d = a ~/ b;
  print('$a ~/ $b: $d');

  var valorA = 9, valorB = 2;
  print('ex.: 9 ~/ 2 = ${valorA ~/ valorB}');

  e = 1;
  f = 1;
  f = null;

  //NOTE - f recebe o incremento se for null
  f ??= ++e;
  print('f: $f');

  var x, y, z;
  z = 1;
  //NOTE - x recebe valor de y a menos que y seja null, então x recebe z
  x = y ?? z;

  print('x: $x');
  print('y: $y');

  var name = null;
  //NOTE - se "name" for null, recebe o valor string
  print('Name: ${name ?? 'Rodrigo'}');

  var numero = 12;
  //NOTE - mostra o resto da divisão
  var par = numero % 2 == 0;
  var impar = numero % 2 != 0;

  var positivo = numero >= 0;
  var negativo = numero < 0;

  print('Número: $numero - Par: $par - Impar: $impar - Positivo: $positivo - Negativo: $negativo');

  var multiplo = 3;
  print('Número $numero é múltiplo de $multiplo? ${numero % multiplo == 0}');

  int dividendo = 19, divisor = 4;
  double quociente = dividendo / divisor;
  int resto = dividendo % divisor;
  bool exata = resto == 0;

  print('Quociente: $quociente - Exata: $exata - Resto: $resto');
}
