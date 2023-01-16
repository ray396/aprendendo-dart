import 'dart:math';

class Conta {
  String nome = 'Rayssa';
  int numeroConta = new Random().nextInt(1000 + 1);
  double saldo = 0;

  double consultarSaldo() => this.saldo;

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0.0;

  void calcularSalario(double salario, double bonus, int faltas) {
    var salarioCalculado = this.saldo = (salario * desconto(faltas)) + bonus;
    print('Salario: $salarioCalculado \nBonus: $bonus \nFaltas: $faltas');
  }

  void depositar(double valorDeposito) {
    // this.saldo += valorDeposito -> outra forma de fazer o mesmo
    this.saldo = this.saldo + valorDeposito;
    print('Deposito: $valorDeposito \nSaldo: $saldo');
  }

  void sacar(double valorSaque) {
    this.saldo = this.saldo - valorSaque;
    print('Saque: $valorSaque \nSaldo: $saldo');
  }
}
