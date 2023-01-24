/*
  * Const
      Inicializado em tempo de compilação, deve ser declarada com valor constante
      Ao nivel de classes deve ser statica para ficar disponivel na classe
      Em coleções const todo o conteúdo deve ser constante
  * Objeto imutavel
      O construtor deve ser constante
      As variaveis devem ser final static const
 */
import 'dart:ffi';

void main() {
  print('10.2 - Modificados Const');

  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);
  print('${resultado}\n');

  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros);

  final listaFinal = const [0, 1];
  //listaFinal.add(2);
  print(listaFinal);

  const listaConst = [1, 2, pi];
  //listaConst.add(pi);
  print('${listaConst}\n');

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 1;
    print('contagem: ${constante + indiceFinal}');
  }

  var pais = new Brasil(-15.792371, -47.002326);
  print('\nobjeto: $pais capital: ${Brasil.capital} latitude: ${pais.latitude} longetude: ${pais.logitude}');
  print('Estados: ${Brasil.estados}');
}

class Brasil {
  final double latitude;
  final double logitude;
  static const String capital = 'Brasilia';
  static const estados = ['SP', 'RJ', 'RN', '...'];

  const Brasil(this.latitude, this.logitude);
}
