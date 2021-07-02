///
/// Uma closure ocorre quando uma função ocorre dentro de outra função,
/// podendo retornar as variáveis locais ou da função superior.
///
funcaoClosures() {
  print('Funções Closures - sem retorno\n');

  var saudacao = (String nome) {
    var mensagem = (dynamic complemento) => print('Olá $nome! $complemento');
    mensagem('Seja bem vindo!');
  };

  print(saudacao);
  saudacao('Rodrigo');

  print('Funções Closures - com retorno\n');

  Function somar(int valorA) {
    print('valorA: $valorA');
    //NOTE - Atenção ao type do parâmetro dentro da closure
    return (double valorB) {
      print('valorB: $valorB');
      return valorA + valorB;
    };
  }

  var somarDez = somar(10);
  print(somarDez);
  print(somarDez(34.0));

  Function porcentagem(desconto) => (valor) => desconto * valor;

  var descontarDez = porcentagem(0.9);
  var descontarVinte = porcentagem(0.8);
  print(descontarDez(1345));
  print(descontarVinte(1345));

  print('Funções Closures - com objetos\n');

  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, dynamic descricao) {
      // return 'Id: ${(++id).toString().padLeft(2, '0')} - Nome: $nome - Descrição: $descricao';
      // return {'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao};
      return Objeto.fromMap({'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao});
    };
    return objetoCriado;
  };

  var objeto = novoObjeto();
  print(objeto);

  var listaObjetos = [
    objeto('Rodrigo', true),
    objeto('Felipe', objeto('Junior', 18)),
    objeto('iPhone', 3000.0),
    objeto('Fones', 100.0),
  ];

  for (var objeto in listaObjetos) {
    // print(objeto.substring(7));
    // print(objeto.map((k, v) => MapEntry(k, (v is double) ? '${descontarDez(v)}' : v)));
    print((objeto.descricao is num) ? descontarVinte(objeto.descricao) : objeto.descricao);
  }
}

class Objeto {
  String? id, nome;
  dynamic descricao;
  Objeto({this.id, this.nome, this.descricao});

  factory Objeto.fromMap(Map<String, dynamic> json) {
    return Objeto(
      id: json['id'].toString(),
      nome: json['nome'],
      descricao: json['descricao'],
    );
  }
}

main() {
  funcaoClosures();
}
