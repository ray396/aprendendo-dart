import 'Conta.dart';
import 'usuario.dart';

///
/// Encapsuladores são usados para proteger os atributos e variaveis
/// Get é usado para acessar e o Set é usado para alterar
/// Atributos ou variaveis com underline são privados ex.: _saldo
///

void main() {
  print('09.1 - Encapsuladores\n');

  var usuario = Usuario('Rayssa', 'abc123');
  usuario
    ..senha = 'abcd'
    ..alteracao = true
    ..senha = '123456';
  print('nome: ${usuario.nome} senha: ${usuario.senha}\n');

  var conta = Conta('Rayssa Ellen');
  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 550
    ..saque = 500;

  print('');

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;

  print('');
  conta
    ..saque = 950
    ..saque = 850;

  print('${conta.informacao}\n');
}
