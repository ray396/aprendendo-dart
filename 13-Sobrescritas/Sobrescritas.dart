/*
 * Metodos (overrido/sobreposição != overload/sobrecargo)
     Overrido: temos sobrecrita dos metodos de classes pai na classe herdeira

 * Construtores
     Super se refere ao construtor da classe herdeira
 
 * Classes Abstratas
      Não podem ser instanciadas servem como modelo
      Metodos sem escopo devem ser sobrescritos nas classes herdeiras
 */
abstract class Animal {
  late String idade;
  late bool docil;
  late bool coluna;

  Animal.vertebrados(this.idade) {
    this.coluna = true;
  }

  Animal.invertebrados(this.idade) {
    this.coluna = false;
  }

  void dormir() {
    print('Dormi como um animal');
  }
}

abstract class Mamiferos extends Animal {
  late String sexo;
  late String desenvolvimento;

  Mamiferos.placentarios(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Plancentarios';
  }
  Mamiferos.marsauplais(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Plancentarios + bolsa externa';
  }
  Mamiferos.monotramados(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('se alimenta');
    print('como um');
  }
}

class Cao extends Mamiferos {
  late String nome;
  late String raca;
  
  Cao.domestico(this.nome, this.raca, String sexo,)
}

void main() {
  print('13.1 - Sobrescritas de Metodos Atributos e construtores\n');
}
