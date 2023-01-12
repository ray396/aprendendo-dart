void main() {
  print('05.2 - For');

  for (var i = 1; i <= 3; i++) {
    print('contagem: $i');
  }

  print('');

  for (int i = 15; i >= 0; i -= 5) {
    print('Regressiva: $i');
  }

  print('');

  String nome = 'Leila';
  int numero = 0;
  for (int i = numero; i < nome.length; i++) {
    /*if (i % 2 == 0) {
      print('$i é par');
    } else {
      print('$i é impar');
    }*/

    print('$i ${(i % 2 == 0) ? 'é par' : 'é impar'}'); //fazendo o mesmo que o if mas em apenas uma linha
  }
  print('');

  for (var i = 0; i < nome.length; i++) {
    print('${nome.substring(i, i + 1)}'); //intervalo estipulado
  }

  print('');

  //quais os multiplos de 2 e 3 no intervalo de 5 e 12
  for (int i = 5; i <= 12; i++) {
    if (i == 0) {
      print('$i é multiplo de todos os numeros');
    } else if (i % 2 == 0 && i % 3 == 0) {
      print('$i é multiplo de 2 e 3');
    } else if (i % 3 == 0) {
      print('$i é multiplo de 3');
    } else if (i % 2 == 0) {
      print('$i é multiplo de 2');
    } else {
      print(i);
    }
  }
}
