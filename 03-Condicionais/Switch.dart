void main() {
  print('03.3 - Switch');

  String operacao = '%'; //torque o % para cai em uma das condições do switch
  double numeroA = 12;
  double numeroB = 3;

  switch (operacao) {
    case '+':
      print('Resultado ${numeroA + numeroB}');
      break;
    case '-':
      print('Resultado ${numeroA - numeroB}');
      break;
    case '*':
      print('Resultado ${numeroA * numeroB}');
      break;
    case '/':
      print('Resultado ${numeroA / numeroB}');
      break;
    default:
      print('Operacao invalida');
  }

  int dia = 3;
  switch (dia) {
    case 0:
      print('Domingo');
      break;
    case 1:
      print('Segunda');
      break;
    case 2:
      print('Terça');
      break;
    case 3:
      print('Quarta');
      break;
    case 4:
      print('Quinta');
      break;
    case 5:
      print('Sexta');
      break;
    case 6:
      print('Sábado');
      break;
    default:
      print('Dia da semana invalido!');
      break;
  }
}
