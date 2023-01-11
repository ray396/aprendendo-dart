void main() {
  print('02.2 - Operadores Relacionais ( == != > >= < <= )');

  var nota = 60;
  var resultado = nota >= 70;
  print('Aluno aprovado: $resultado');

  bool testeLogico = (!false && true);
  print('teste Logico: ${3 > 1 && (3 < 2) || testeLogico}');

  print('5 = 5 && 6 > 5: ${5 == 5 && 6 > 5}');
  print('5 != 5 && 6 == 5: ${5 != 5 && 6 == 5}');
  print('5 <= 5 && 6 != 5: ${5 <= 5 && 6 != 5}');
}
