///
/// funções anonimas não possuem nomes!
///
funcaoAnonimas() {
  print('06.4 - Funções Anonimas Conceito\n');
  print('''SINTAXE
  (){
    print('Funcao Anonimo!');
    }
    
    () => print('Função Anonimo usando sintaxe Arrow!')''');
  print('\n Funções anonimas como variaveis\n');

  var variavelAnonima = () => print('variavel anonima');
  variavelAnonima();

  var variavelAnonimaParamentro = (String msg) => print('Variavel anonima $msg');
  variavelAnonimaParamentro('com parametro');

  print('\nfunção anonima como parametro\n');

  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('funcao anonima passsada como parametro!'));
}

void main() {
  funcaoAnonimas();
}
