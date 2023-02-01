///
/// *Conceito:
///  - Every faz o teste em 'todos' elementos com o operador lógico && retornando (true ou false)
///

everyMap() {
  print('\n21.3 - Map Every\n');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Lucia', 'idade': 60},
    {'nome': 'Livia', 'idade': 31},
    {'nome': 'Lara', 'idade': 17},
  ];
  print(pessoas.every((e) => e.containsKey('nome')));
  print(pessoas.every((e) => e['idade'] >= 17));
  bool maiores = pessoas.every((e) => e['nome'].startsWith('L'));
  print(maiores);
}

main() {
  everyMap();
}
