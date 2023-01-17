/*
  *Static
    A variavel estatica fica disponivel na própria classe em vez de suas intancias/objetos
    Em metodos estaticas deve usar variáveis estáticas da classe
    Variaveis estaticas podem ser acessadas sem precisar intanciar classes/objetos
 */

import 'Calculos.dart';

void main() {
  print('10.1 - Modificadores Static\n');

  double raio = 5;
  var calculo1 = new Calculos();
  print(calculo1.pi);
  print(calculo1.areaCirculo(raio));

  print('');

  Calculos calculo2 = Calculos();
  print(calculo2.pi);
  print(calculo2.areaCirculo(raio));

  print('Retornos iguais: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'SIM' : 'NÂO'} Metodos diferentes');

  print(Calculos.piEstatico);
}
