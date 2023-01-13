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

  conceito();
  somaValores(5, 5);
  verificaMaiorIdade('Rayssa', 22);
}

void main() {
  semretorno();
}
