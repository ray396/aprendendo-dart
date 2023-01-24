/*
 * Regras
    Uma classe pode ter somente uma herança!
 
 * Construtores
    Devem obedecer a ordem dos parametros
    Parametros default devem ser nomeados ou posicionados
    Tratamento e tipagem de paramentros devem ser feito na classe herdeira 
 */

class Animal {
  late String idade;
  late bool docil;

  Animal(this.idade, this.docil);

  void dormir() {
    print('Dorme como um animal');
  }
}

class Mamiferos {
  late String sexo;

  Mamiferos(this.sexo, idade, docil) : super(idade, docil);

  void alimentar() {
    print('Se alimenta como um mamifero!');
  }
}

class Cao extends Mamiferos {
  late String nome;
  late String raca;

  Cao(this.nome, this.raca, String sexo, {String idade, bool docil}) : super(sexo, idade, docil);

  void acao() {
    print('Late como um cao');
  }
}

void main() {
  print('12.1 - Heranças de atributos metodos e construtores\n');

  var cao = Cao('Minnei', 'poodle', 'femea');
  print('nome: ${cao.nome} raça: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${docil}');
}
