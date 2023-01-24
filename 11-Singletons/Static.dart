/*
 * Singleton
     É um padrão de projeto para que exista apenas uma instância da classe.
     O construtor nomeado privado sem o construtor default impede de instanciar a classe.
 * Static 
     A instância pode ser acessada diretamente.
 */

void main() {
  print('11.1 - Simpletons Static');
  print(PessoaStatic.instancia.nome);
}

class PessoaStatic {
  static final PessoaStatic instancia = new PessoaStatic._construtorNomeado();
  late String nome;
  PessoaStatic._construtorNomeado();
}
