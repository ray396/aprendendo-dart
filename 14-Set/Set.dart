import 'dart:collection';

///
/// * Set é uma coleção de elementos unicos e ordenados entre chaves {}, Não tem acesso a indice!
///
linkedHashSet() {
  print('19.1 - LinkedHashSet == Set \n');

  Set<int> setInt = Set();
  print('Inplementação: ${setInt.runtimeType}'); // _CompactLinkedHashSet<int>
  //setInt[0] = 0; //não tem acesso ao indice
  setInt.add(13);
  setInt.add(13);
  setInt.add(17);
  setInt.add(22);
  print(setInt);
  setInt.remove(13);
  print(setInt); // apresentada por chaves
  for (var i = 0; i < setInt.length; i++) {
    // print(setInt[i]); // não tem acesso ao indice mas pode usar elementAt
    print('for: ${(setInt.elementAt(i))}');
  }
  for (var elemento in setInt) {
    print('for in: ${elemento}');
  }

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};
  print(listaA.difference(listaB));
  print(listaA.union(listaB));
  print(listaA.intersection(listaB));
  print(listaA.lookup(5));
}

main() {
  linkedHashSet();
}
