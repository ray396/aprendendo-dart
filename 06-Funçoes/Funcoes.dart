void semretorno() {
  print('06.1 - Semretorno\n');

  void conceito() {
    print('Função void sem retorno');
  }

//detalhes só pode chamar uma função depois que a mesma tenha sido criada
  void somaValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print('Soma: $valorA + $valorB = $resultado');
  }

  void verificaMaiorIdade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    print('$nome $resposta de idade');
  }

  converteKparaMilas(dynamic array) {
    dynamic milha = 0.621271;
    for (var item in array) {
      print('$item\t km/h em Minhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    print('Array convertido e arredondado!');
  }

  conceito();
  somaValores(5, 5);
  verificaMaiorIdade('Rayssa', 22);
  converteKparaMilas({1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200});
}

conRetorno() {
  print('\nFunção com retorno\n');

  String conceito() {
    return 'Função com retorno String';
  }

  print(conceito());
}

void main() {
  semretorno();
  conRetorno();
}
