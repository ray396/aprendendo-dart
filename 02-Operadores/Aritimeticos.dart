void main() {
  print('02.3 - Operadores Aritimeticos ( + - * / ~/ %),  incremento (== ++), assipacao ( = ??)');
  var peso = 10;
  peso = peso + 5;
  print(peso);
  var a, b, c, d, e, f;
  a = 3;
  b = ++a; // incrementa antes que b receba o valor
  print('a: $a b: $b');

  c = ++a / --b;
  print('a: $a b: $b');
  print(c);

  d = a ~/ b; // divisão retorna um numero inteiro
  print('c $c d: $d');

  var valorA = 8, valorB = 2;
  print('ex.: 8 ~/ 2 = ${valorA ~/ valorB}');

  e = 1;
  f = e;
  f = null; //nula
  f ??= ++e; // f recebe o incremento se for nulo
  print('e: $e f: $f');

  var x, y, z;
  z = 1;
  x = y ?? z; // x recebe o valor de y, e menos que y seja nulo, então  x recebe o z
  print(x);
  print(y);

  var nome = null;
  print('nome: ${nome ?? 'Rayssa'}\n');

  var numero = 12;
  var par = numero % 2 == 0; //resto da divisão
  var impar = numero % 2 != 0;
  var positivo = numero >= 0;
  var negativo = numero <= 0;
  print('numero: $numero \nPar: $par \nImpar: $impar \npositivo: $positivo \nNegativo: $negativo');
}
