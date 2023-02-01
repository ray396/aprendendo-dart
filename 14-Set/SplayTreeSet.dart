import 'dart:collection';

///
/// * SplayTreeSet organiza automaticamente os elementos em ordem crescente
/// * Por ser uma arvore de comparações não pode contar elementos null
///

splayTreeSet() {
  print('\n19.3 - SplayTreeSet\n');

  SplayTreeSet<String> splayTreeSet = SplayTreeSet();
  splayTreeSet.add('info1');
  splayTreeSet.add('info3');
  splayTreeSet.add('info');
  splayTreeSet.add('info2');
  //não pode conter null
  print(splayTreeSet);
  for (var i = 0; i < splayTreeSet.length; i++) {
    //print(splayTreeSet[i]); //não tem acesso ao indice
    print('for: ${splayTreeSet.elementAt(i)}');
  }
  for (var elemento in splayTreeSet) {
    print('for in: $elemento');
  }
  splayTreeSet.forEach((e) => print('forEach: $e'));
}

main() {
  splayTreeSet();
}
