/* 
  - tipos de variaveis
      Nun[int, double], String, bool, dynamic
*/
void main() {
  print('01.2 - Variaveis Funcoes');

  num pi = 3.14;
  print(pi.floor()); //3
  print(pi.round()); //3
  print(pi.ceil()); //4
  print(pi.clamp(3, 3.1)); //3.1
  print(pi.compareTo(3)); // -1 se for inferior / 0 iguais / 1 se for superior
  print(pi.remainder(3)); // 0.140000000000012
  print(pi.toInt()); //3
  print(pi.toString()); // "3.14"
  print(pi.toStringAsFixed(1)); //3.1
  print(pi.truncate()); //3
  print(pi.isNegative); //false
  print(pi.isInfinite); //false
  print((pi / 0).isInfinite); //true
  print(12.gcd(16)); //4

  print("");
  String nome = 'Rayssa';
  String nomeCompleto = '\t Rayssa Ellen';
  print(nome.toLowerCase()); //transforma as letras em minusculas
  print(nome.toUpperCase()); //transforma as letra em maiusculas
  print(nomeCompleto.trim()); //retira todos os espeços do inicio e do fim
  print(nomeCompleto.split(' ')); // onde tiver o parametro que eu determinei dentro do () ira retorna uma array
  print(nome.substring(3, 6)); //trabalhando com cada caracteri sendo uma posição de uma lista
  print(nome.startsWith('R')); //verifica que o valor dentro da variavel de fato começa com o valor indicado no () caso sim o valor volta em forma de um boleano
  print(nome.replaceAll('a', 's')); // troca o primeiro valor pelo segundo indicado
  print(nome.replaceFirst('R', '')); // retira o valor indicado no primeiro caso o sengundo valor seja uma string vazia
  print(nome.replaceRange(2, 4, '')); //subistitu uma sequencia
}
