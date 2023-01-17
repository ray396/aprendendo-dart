class Animal {
  late String nome;
  late String raca;
  late int idade;
  Animal(String nome, String raca, int idade) {
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print('Construtor com parametros default: ${this.toString}');
  }
}
