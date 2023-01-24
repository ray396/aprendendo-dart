/*
    *Singleton
      É um padrão de projeto para que exista apenas instância da classe
      O construtot nomeado privado sem o construtor default impede de instanciar a classe
    *Factory
      Construtor factory é usado para retornar/manter a instancia original
      Construtor factory é capaz de retornar valores. 
 */

sigletonFactory() {
  print('11.3 - Singletons Factory\n');

  var p1 = new PessoaFactory();
  print(p1.nome);
  p1.nome = 'Rayssa';
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'Ellen';
  print(p1.nome);
  var p2 = PessoaFactory();
  p2.nome = 'Safyra';
  print(PessoaFactory.instancia.nome);
  print(identical(p1, PessoaFactory.instancia));
  print(p2 == PessoaFactory.instancia);
}

void main() {
  sigletonFactory();
}

class PessoaFactory {
  static final PessoaFactory instancia = new PessoaFactory._construtorNomeado('indefinido');
  late String nome;
  factory PessoaFactory() => instancia;
  PessoaFactory._construtorNomeado(this.nome) {
    // configurações inicias
  }
}
