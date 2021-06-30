main() {
  print('Condicionais (if else) \n');

  if (true) {
    print('Verdadeiro');
  } else {
    print('Falso');
  }

  if (!true)
    print('Falso');
  else
    print('Verdadeiro');

  int age = 16;

  if (age >= 18) {
    print('maior');
  } else {
    print('menor');
  }

  age = 18;

  if (age < 14) {
    print('criança');
  } else if (age < 18) {
    print('adolescente');
  } else {
    print('adulto');
  }

  if (age < 14) {
    print('criança');
  } else if (age >= 14 && age <= 17) {
    print('adolescente');
  } else {
    print('adulto');
  }

  String textInt = '10';
  String textDouble = '10.12345';
  int numeroInt = int.parse(textInt);
  var numeroDouble = double.parse(textDouble).toStringAsFixed(2);
  print('ParseInt: $numeroInt - ParseDouble: $numeroDouble');
  print('ParseString: ${numeroDouble.toString() is String}');

  double weight = 75;
  double height = 1.83;

  var tmp = weight / (height * height);
  double imc = double.parse(tmp.toStringAsFixed(2));
  print(imc);

  if (imc < 18.5) {
    print('IMC $imc abaixo do peso');
  } else if (imc >= 18.5 && imc < 25) {
    print('IMC $imc peso normal');
  } else if (imc >= 25 && imc < 30) {
    print('IMC $imc sobrepeso');
  } else if (imc >= 30 && imc < 35) {
    print('IMC $imc obesidade grau 1');
  } else if (imc >= 35 && imc < 40) {
    print('IMC $imc obesidade grau 2');
  } else {
    print('IMC $imc obesidade grau 3');
  }
}
