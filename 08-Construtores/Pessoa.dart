class Pessoa {
  late String nome;
  late int idade;
  late String cor;
  late double altura;

  Pessoa(this.nome, this.idade, String cor, this.altura) {
    this.cor = (cor == null) ? 'indefinida' : cor;
    print('Construtor resumido com parametros nomeados! ${this.toString()}');
  }
}
