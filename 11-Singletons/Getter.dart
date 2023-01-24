/**
 * Singleton
    É um padrão de projeto para que exista apenas uma instância da classe
    O construtor nomeado privado sem o construtor default impede de instanciar a classe.
 * Getter
    A _instancia privada é acessada atraves do get.
 */

void main() {
  print('11.2 - Singleton Getter\n');

  print(PessoaGetter.instancia.nome);
  PessoaGetter.instancia.nome = 'Rayssa';
  print(PessoaGetter.instancia.nome);

  var p1 = PessoaGetter.instancia;
  var p2 = PessoaGetter.instancia;
  p1.nome = 'Ellen';
  print(PessoaGetter.instancia.nome);
  p2.nome = 'Maria';
  print(PessoaGetter.instancia.nome);
  print(identical(p1, p2));
}

class PessoaGetter {
  static final PessoaGetter _instancia = PessoaGetter._construtorNomeado();
  late String nome;

  PessoaGetter._construtorNomeado();

  static PessoaGetter get instancia {
    return _instancia;
  }
}
