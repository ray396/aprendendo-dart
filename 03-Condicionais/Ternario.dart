void main() {
  print('03.2 - Ternario\n');

  // ele é como se fosse um if e else

  if (!true) {
    print('Verdadeiro');
  } else {
    print('falso');
  }
  print('${!true ? 'Verdadeiro' : 'falso'}');

  int idade = 18;
  print((idade < 14)
      ? 'Criança'
      : (idade < 18)
          ? 'adolecente'
          : 'adulto');

  int nota = 80;
  String resultado = (nota < 40)
      ? 'Reprovado'
      : (nota < 70)
          ? 'Recuperação'
          : 'Aprovado';

  print(resultado);

  int numero = 12;
  print('numero: $numero é ${(numero % 2 == 0) ? 'par' : 'impar'} e ${(numero >= 0) ? 'positivo' : 'negativo'}!');

  int multiplo = 3;
  print('Numero $numero ${(numero % multiplo == 0) ? 'é' : 'não é'} multiplo de $multiplo');

  int ano = 2000;
  print('Ano: $ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? 'é bissexto' : 'não é bissexto'}');
}
