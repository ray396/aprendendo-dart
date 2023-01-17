import 'Animal.dart';
import 'Objeto.dart';
import 'Pessoa.dart';

///
/// os construtores devem ter o nome da classe
/// eles são iniciados quando instanciamos as classes, podendo fazer configurações iniciais
///
void main() {
  print('08.1 - Construtores\n');

  Objeto objeto = new Objeto();
  objeto.nome = 'mesa';
  print('nome: ${objeto.nome}\n');

  Animal animal = Animal('Minei', 'poodle', 3);
  print('nome: ${animal.nome} \nraça: ${animal.raca} \nidade: ${animal.idade}');

  Pessoa pessoa = Pessoa('rayssa', 22, 'parda', 1.60);
  print('nome: ${pessoa.nome} \nidade: ${pessoa.idade} \ncor: ${pessoa.cor} \naltura: ${pessoa.altura}');

//dados inseridos pelo usuario

  Usuario usuario = Usuario('ray21@gmail.com', 'abc123', 'Rayssa', 'dev');
  print('usuario: ${usuario.user} senha: ${usuario.senha} \nnome: ${usuario.nome} cargo: ${usuario.cargo}');
}

class Usuario {
  late String user, senha, nome, cargo;
  late int idade;

  Usuario(this.user, this.senha, this.nome, this.cargo) {
    this.nome = (nome == null) ? 'nomeIvalido' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;
    print('Construtor resumido com parametros nomeados default! ${this.toString}');
  }

  Usuario.admin(this.user, this.senha, this.nome, this.cargo) {
    this.nome = (nome == null) ? 'nomeIvalido' : nome;
    this.cargo = 'Administrador';
    print('Construtor resumido com parametros nomeados default! ${this.toString}');
  }
  void autenticar() {
    //dados recuperados do banco de dados
    var user = 'ray21@gmail.com';
    var senha = 'abc123';
    (this.user == user && this.senha == senha) ? print('Usuario autenticado') : print('Usuario não autenticado');
  }
}
