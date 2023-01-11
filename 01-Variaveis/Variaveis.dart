void main() {
  print('01.1 - Variaveis');
  //comentario
  /*existe três formas de comentarios [//comenta uma unica linha]
  [/*comenta mais de uma linha*/] e existe o de [///]*/

  /* 
      formatações
        backspace: \b,
        formfeed: \f,
        newline: \n,
        return: \r,
        tab: \t.
   */

  var valorA = 10; // é dinamica ate ser atribuida
  var valorB = 4;
  var valorC = 2.5;
  var resultado;
  resultado = valorA + valorB + valorC;
  print(resultado);
  var salario = 1000, descontos = 250;
  var conta = salario - descontos;
  print(conta);
  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);

  print('');
  var teste1 = '\nRayssa ';
  var teste2 = "Ellen";
  var teste3 = '''\n e Ellen Rayssa''';

  var nome = teste1 + teste2 + teste3;
  print(nome);

  print('');
  var verdadeiro = true;
  var falso = false;

  // usando o $ é outra forma de declara uma variaveis
  // usando o ${} operações
  print('verdadeiro = ${verdadeiro}');
  print('falso = ${falso}');
  print(''.runtimeType); // descobre o tipo de variavel em tempo de execução

  const pi = 3.14; //variavel constante é atribuida em tempo de compilacao
  nome = 'Fernando'; // errado -> mesmo o dart aceitando é errado essa forma
  String sobrenome = 'Dantas';
  int idade = 22;
  double altura = 1.60;
  bool adulto = true;

  print('\nnome:' + "$nome \nQtd letras: ${nome.length}" + """\nSobrenome: $sobrenome \nQtd ${sobrenome.length}\n""");

  print('''idade: $idade
  altura: $altura
  adulto: $adulto
  \npi: $pi\n''');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'ola';
  variavel = true;
  print(variavel);
}
