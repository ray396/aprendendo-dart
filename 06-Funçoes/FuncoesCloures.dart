///
/// uma closure ocorre quando uma função é declarada dentro do corpo de outra função!
/// podendo retornar as variaveis locais e de função superior
///
funcaoCloures() {
  print('06.5 - funções cloures sem retorno\n');

  var saudacao = (String nome) {
    var mesagem = (complemento) => print('Olá $nome! $complemento');
    mesagem('seja bem vindo!');
  };

  saudacao('Rayssa');

  print('\nfunções cloures com retorno\n');

  Function somar(int valorA) {
    return (valorB) {
      return valorA + valorB;
    };
  }

  var somarDez = somar(10);
  print(somarDez(5));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontaDez = porcentagem(.9);
  var descontaVinte = porcentagem(.8);
  print(descontaDez(100));
  print(descontaVinte(200));

  print('\nfunções cloures com objectos\n');

  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      return 'id: ${++id} nome: $nome, descrição: $descricao'; //retorna para uma array
    };
    return objetoCriado;
  };
  var objeto = novoObjeto();
  print(objeto);

  var listaObjetos = [objeto('Rayssa', 1.99)];
  listaObjetos.add(objeto('Iphone', 3000.00));
  listaObjetos.add(objeto('fones', 100.00));

  for (var objeto in listaObjetos) {
    print(objeto.substring(7));
  }
}

void main() {
  funcaoCloures();
}
