///
/// Funções com paramentros posicionados devem obedecer a ordem declarada!
/// Funções com paramentros nomeados deve ser declarado!
/// Os paramentos posicionados ou nomeados devem começar pelo ultimo paramentro da função
///
funcaoParametros() {
  print('06.3 - Funções com parametros posiciomados e default\n');

  void exibirDados(String nome, int peso, double altura) {
    print('Nome: $nome peso: $peso altura: $altura');
    // Ao envolve os dados do paramentro dentro de chaves, faz o valor ser posicionado onde você não é obrigado a passar esse valor dentro do parametro
  }

  exibirDados('Rayssa', 49, 1.60);

  print('\nFunções com paramentros nomeados e default\n');

  exibirDados2(String nome, int peso, double altura) {
    print('nome: $nome peso: $peso altura: ${altura ?? `não informados`}');
  }

  exibirDados2('Fernando', 70, 1.70);

  print('\nFunção como parametros para outras funcoes\n');

  void falar() {
    print('Essa é uma função passada como parametro nomeado!');
  }

  void saudacao(String nome, {Function funcaoFalar}) {
    print('Ola, eu sou $nome');
    funcaoFalar();
  }

  saudacao('Rayssa', funcaoFalar: falar);
}

void main() {
  funcaoParametros();
}
