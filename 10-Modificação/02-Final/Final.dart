/*
  * Final
    Inicializada apenas quando acessando os tempo de execução, deve ser declarada!
    em coleções final nem todo o conteúdo será final
*/

void main() {
  print('10.2 - Modificadores final\n');

  //? Objeto em queda livre leva 5s para chegar ao solo! Qual a velocidade maxima do objeto?

  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo;
  print('Velocidade maxima: $velocidade m/s\n');

  for (int i = 1; i <= 3; i++) {
    final index = i;
    print('contagem $index');
  }
}
