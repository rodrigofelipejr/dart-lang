///
/// Funções com parâmetro posicionados devem obedecer a ordem declarada dos parâmetros
/// Funçõs com parâmetros nomeados devem ser declarados
/// Os parâmetros posicionais ou nomeados devem começas pelo último parâmetro da função
///

funcaoParametros() {
  print('Funções com parâmetros posicionados ([]) e com valores default\n');

  void exibirDados(String nome, [int peso = 60, double altura = 1.83]) {
    print('Nome: $nome - Preso: $peso - Altura: $altura');
  }

  exibirDados('Rodrigo', 65, 1.78); //NOTE - deve passar todos os parâmetros
  exibirDados('Felipe', 70);
  exibirDados('Jonas');

  print('Funções com parâmetros nomeados ({}) e com valores default\n');

  void exibirDados2(String nome, {int? peso, double altura = 1.83}) {
    print('Nome: $nome - Preso: ${peso ?? '(não informado)'} - Altura: $altura');
  }

  exibirDados2('Rodrigo', altura: 1.76, peso: 67); //NOTE - podemos informar fora de ordem
  exibirDados2('Rodrigo', altura: 1.76);

  print('Funções como parâmetros para outras funções\n');

  void falar() => print('Essa é uma função passada como parâmetro nomeado!');

  void saudacao(String nome, {Function? funcaoFalar}) {
    print('Olá, eu sou $nome!');
    if (funcaoFalar != null) funcaoFalar();
  }

  saudacao('Rodrigo', funcaoFalar: falar);
  saudacao('Felipe', funcaoFalar: () => print('Essa é uma função anônima passada como parâmetro nomeado.'));
}

main() {
  funcaoParametros();
}
