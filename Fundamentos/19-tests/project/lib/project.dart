int calculate() {
  return 6 * 7;
}

List<String> converterEmLista(String nome) {
  return nome.split(' ').toList();
  // return nome.split(' ').map((e) => e.toUpperCase()).toList();
}

String maioridade(int idade) {
  if (idade < 0) throw Exception('A idade não pode ser negativa');

  return idade < 14
      ? 'Criança'
      : idade < 18
          ? 'Adolescente'
          : 'Adulto';
}

String recuperarNome(List<String> nomes) {
  return nomes[0];
}

double restoDivisao(double a, double b) {
  return a.remainder(b);
}
