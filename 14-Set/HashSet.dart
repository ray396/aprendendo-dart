import 'dart:collection';

///
/// * para ultilizar necessita que realize a import do 'dart:collection'
/// * HashSet é uma coleção de elementos unicos e desordenados
///

hashSet() {
  print('19.2 - HashSet\n');

  HashSet<String> hashSet1 = HashSet();
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();
  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');
  hashSet2.add(1); // apenas int com 1 decimal fica ordenada
  hashSet2.add(2);
  hashSet2.add(3);
  hashSet3.add(11);
  hashSet3.add(22);
  hashSet3.add(33);
  print('$hashSet1 \n$hashSet2 \n$hashSet3');
  for (var i = 0; i < hashSet1.length; i++) {
    //print(hashSet1[i]); //não tem acesso a indice mas pode usar elementAl
    print('for hashSet1: ${hashSet1.elementAt(i)}');
  }
  for (var elemento in hashSet2) {
    print('for in hashSet2: $elemento');
  }
  hashSet3.forEach((e) => print('forEach hashSet3: $e'));
}

main() {
  hashSet();
}
