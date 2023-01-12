void main() {
  print('05.1 - While e doWhile\n');

  //while faz o teste antes da execução
  var numero = 5;

  while (numero > 0) {
    print('while: $numero');
    numero--;
  }

  print('');

  //do while faz a execução e testa depois

  var contagem = 1;

  do {
    print('doWhile: $contagem');
    contagem++;
  } while (contagem <= 3);

  int multiplo = 4;
  int min = 10;
  int max = 20;
  int resultado = min;

  while (resultado <= max) {
    if (resultado % multiplo == 0) {
      print('Primeiro multiplo de $multiplo entre $min e $max é: $resultado');
      break; //se achar o primeiro multiplo interrompe o loop
    }
    resultado++;
  }
}
