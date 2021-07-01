///
/// Funções arrow tem o retorno implícito (return || =>)
///
functionArrow() {
  print('Funções (arrow)');

  String conceito() => 'Função arrow com retorno implícito';
  String somarValores(int a, int b) => 'Soma: $a + $b = ${a + b}';
  String verificarMaioridade(String nome, int idade) => '$nome ${(idade >= 18) ? 'é maior' : 'não é maior'} de idade';
  String calcularAreaCirculo(double raio) => 'Área do círculo ${3.14 * raio * raio}';
  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome - Salário líquido: $total');
  }

  print(conceito());
  print(somarValores(4, 6));
  print(verificarMaioridade('Rodrigo', 33));
  print(verificarMaioridade('Felipe', 13));
  print(calcularAreaCirculo(2));
  calcularSalario('Rodrigo', 900, 100, 2);
}

main() {
  functionArrow();
}
