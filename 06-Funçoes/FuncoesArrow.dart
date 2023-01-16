///
/// funções arrow tem o retorno implicito!
///
FuncoesArrow() {
  print('06.2 - Funções Arrow\n');

  String conceito() => 'Função arrow com retorno implicito';

  String somarValores(int valorA, int valorB) => 'soma: $valorA + $valorB = ${valorA + valorB}';

  String verificarMaiorIdade(String nome, int idade) => (idade >= 18) ? '$nome é maior de idade!' : '$nome não é maior de idade!';

  String calcularAreaCirculo(double raio) => 'Area do circulo: ${3.14 * raio * raio}';

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('empregado: $nome salario: $total');
  }

  print(conceito());
  print(somarValores(2, 5));
  print(verificarMaiorIdade('Rayssa', 22));
  print(calcularAreaCirculo(2));
  calcularSalario('Rayssa', 900, 100, 2);
}

void main() {
  FuncoesArrow();
}
