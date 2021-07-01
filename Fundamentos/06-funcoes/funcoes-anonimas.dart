funcaoAnonima() {
  print('Funções anônimas\n');

  print(''' SINTAXE
    () {
      print('Função anônima!');
    }
  
    () => print('Função anônima usando sintaxe Arrow!'); 
  ''');

  var variavelAnonima = () => print('Variável anônima!');
  variavelAnonima();

  var variavelAnonimaComParametro = (String msg) => print('Variável anônima $msg');
  variavelAnonimaComParametro('com parâmetro!');

  print('Funções anônimas com parâmetros\n');

  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('Função anônima passada como parâmetro.'));
}

main() {
  funcaoAnonima();
}
