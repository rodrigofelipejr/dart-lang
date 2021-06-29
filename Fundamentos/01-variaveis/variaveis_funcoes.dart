/**
 * Tipos de variáveis
 * Num(int, double), String, bool, dynamic
 */

void main() {
  print('Variáveis Funções');

  num pi = 3.14;
  print(pi.floor()); // arredondar -- 3
  print(pi.round()); // arredondar para inteiro mais próximo -- 3
  print(pi.ceil()); // arredondar para inteiro maior -- 4
  print(pi.clamp(3, 3.1)); // arredondar para valor mais próximo em um intervalo -- 3.1
  print(pi.compareTo(3)); // Compara números, -1 inferior, 0 igual e 1 superior -- 1
  print(pi.remainder(3)); // resto da divisão -- 0.14000000000000012
  print(pi.toInt()); // convert para int -- 3
  print(2.toDouble()); // convert para double -- 2.0
  print(pi.toString()); // convert para string -- '3.14'
  print(pi.toStringAsFixed(1)); // limitar o número de casas decimais -- 3.1
  print(pi.truncate()); // descarta parte fracionária -- 3
  print(pi.isNegative); // confirma se é negativo -- false
  print(pi.isInfinite); // confirma se é infinito -- false
  print((pi / 0).isInfinite); // confirma se é infinito -- true
  print(12.gcd(16)); // máximo divisor comum entre dois números -- 4

  print('1'.padLeft(2, '0'));
  print('7'.padRight(3, '0'));

  print('');

  String name = 'Rodrigo';
  String completeName = '\t Rodrigo Felipe';

  print(name.toLowerCase());
  print(name.toUpperCase());
  print(completeName.trim());
  print(completeName.split(' '));
  print(name.split(''));
  print(completeName.substring(4, 9));
  print(name.startsWith('R')); // verifica se o nome inicia com 'R'
  print(name.startsWith('drigo', 2)); // verifica se partir do index informado, existe a correspondência 'drigo'
  print(name.startsWith('drigo', 3));
  print(name.replaceAll('o', 'y'));
  print(name.replaceFirst('Ro', 'Ze'));
  print(name.replaceFirst('o', 'u', 4)); // replace x por y, a partir de um index
  print(name.replaceRange(3, 6, '')); // replace de um index até outro index
  print(completeName.trim().split(' '));
  print(name.contains('u'));
  print(name.contains('o'));
  print(name.contains('T'));
  print(name.contains('e', 2));
  print(name.contains('i', 2));
  print(name.indexOf('drigo'));
  print(name.endsWith('r')); // verifica se a string termina com valor passado
  print(name.endsWith('o'));
  print(name.startsWith('R'));
  print(name.compareTo('Rodrigo')); // 0 se for igual
  print(name.compareTo('Rod')); // 1 se possui
  print(name.compareTo('rodrigo')); // -1 se for diferente
  print(' '.isEmpty);
  print(''.isEmpty);
  print(double.parse('12.55'));
  print(double.parse('12.55').runtimeType);
  print('1' is String);
  print(int.parse('12'));
  print(int.parse('12').runtimeType);
  print(int.parse('12') is int);
  print(name.lastIndexOf('o'));

  String sopa = 'sopa de letrinhas';
  int index = sopa.indexOf(' de ');
  print('A sopa é ${sopa.substring(index).trim()}');

  print('');

  num number = 3.14;
  print(number is double); // true
  print(number is! double); // false
}
