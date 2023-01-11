void main() {
  print('03.1 - Condicionais If e Else');

  if (true) {
    print('verdadeiro');
  } else {
    print('false');
  }

  int idade = 17;
  if (idade >= 18) {
    print('maior');
  } else {
    print('menor');
  }

  //obs o if aceita também ser sem as chaves, porém ele só aceita uma linha

  idade = 15;
  if (idade < 14) {
    print('criança');
  } else if (idade < 18) {
    print('adolecente');
  } else {
    print('adulto');
  }

  String textoInt = '18';
  String textoDouble = '3.14000';
  int numeroInt = int.parse(textoInt);
  var numeroDouble = double.parse(textoDouble).toStringAsFixed(2);
  print('ParseInt: $numeroInt ParseDouble: $numeroDouble');
  print('ParseString: ${numeroDouble.toString() is String}');

  double peso = 120;
  double altura = 1.83;
  var tep = peso / (altura * altura);
  double imc = double.parse(tep.toStringAsFixed(2));
  print(imc);

  if (imc < 18.5) {
    print('IMC $imc - Abaixo do peso');
  } else if (imc >= 18.5 && imc < 25) {
    print('IMC $imc - Peso normal');
  } else if (imc >= 25 && imc < 30) {
    print('IMC $imc - Sobrepeso');
  } else if (imc >= 30 && imc < 35) {
    print('IMC $imc - Obesidade garu 1º');
  } else if (imc >= 35 && imc < 40) {
    print('IMC $imc - Obesidade grau 2º');
  } else {
    print('IMC $imc - grau 3º');
  }
}
