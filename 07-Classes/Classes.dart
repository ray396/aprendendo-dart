///
/// a melhor forma de criar uma class é fazendo ela fora do codigo e importando ela dessa forma que está abaixo
///

import 'Conta.dart';
import 'Pessoa.dart';
import 'Usuarios.dart';

///
/// classes são objetos
/// variaveis => atributos
/// funções => metodos
///
void main() {
  print('07.1 - Classes/Objetos');

  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = 'Rayssa';
  pessoa1.idade = 22;
  print('nome: ${pessoa1.nome} idade: ${pessoa1.idade}');

  Pessoa pessoa2 = Pessoa(); //no dart não precisa declarar sempre o new -> deixando assim um codigo mais limpo
  pessoa2.nome = 'Sol';
  pessoa2.idade = 19;
  print('nome: ${pessoa2.nome} idade: ${pessoa2.idade}');

  //simulação de dados inseridos pelo usuario
  Usuario usuario = new Usuario();
  usuario.usuario = 'ray396';
  usuario.senha = '123';
  usuario.autenticar();

  Conta conta = Conta();
  print('Nome: ${conta.nome} \nNºConta: ${conta.numeroConta} \nSaldo: ${conta.consultarSaldo()}');
  conta.calcularSalario(950, 150, 2);
  conta.depositar(150);
  conta.sacar(50);
}
