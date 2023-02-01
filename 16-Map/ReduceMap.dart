///
/// * Conceitos:
///   - Reduce compare os elementos da coleção retornando um uncio elemento resultante!
///   - As interagir com os elementos o indice e se torna o anterior, indice 1 se torna o atual
///

reduceMap() {
  print('\n21.5 - Map Reduce\n');

  List<Map<String, dynamic>> alunos = [
    {'nome': 'Ana', 'nota': 7.3, 'bolsista': false},
    {'nome': 'Alice', 'nota': 9.2, 'bolsista': true},
    {'nome': 'Alex', 'nota': 9.8, 'bolsista': true},
    {'nome': 'Allan', 'nota': 8.7, 'bolsista': false},
  ];
  final Function bolsistas = (e) => e['bolsista'] as bool;
  final Function nomes = (e) => e['nome'];
  final Function notas = (e) => e['nota'];
  final Function soma = (p, c) => p + c;
  List<dynamic> bolsistasNomes = alunos.where(bolsistas).map(nomes).toList();
  List<Map<String, dynamic>> medias = alunos.where(bolsistas).toList();
  print('Alunos Bolsistas: $bolsistasNomes');
}

main() {
  reduceMap();
}
