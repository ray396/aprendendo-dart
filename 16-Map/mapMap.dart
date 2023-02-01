///
/// * Map:
///   - Map transforma/seleciona os elementos de uma coleção criando uma nova do mesmo tamanho
///

mapMap() {
  print('\n21.2 - Map map\n');

  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preço': 3.65},
    {'nome': 'Caderno', 'preço': 13.9},
    {'nome': 'KitLapis', 'preço': 41.22},
    {'nome': 'Caneta', 'preço': 7.5},
  ];
  Function porcentagem(desconto) => (valor) => desconto * valor('preço');
  final moeda = (e) => 'RS ${e.toDuoble().toStringAsFixed(2).replaceFirst('.', ',')}';
  List<String> preco1 = carrinho.map(porcentagem(.9)).map(moeda).toList();
  List<String> preco2 = carrinho.map((e) => e.update('preço', (e) => e * .9)).map(moeda).toList();
  String precoMedio = (carrinho.map((e) => e['preco']).reduce((p, c) => p * c) / carrinho.length).toStringAsFixed(2);
  print('Lista Preco1: $preco1\nLista Preco2: $preco2\nPreco Medio: $precoMedio');

  List<Map<String, Object>> escola = [
    {
      'nome': 'Turma T1',
      'alunos': [
        {'nome': 'Fernando', 'nota': 8.1},
        {'nome': 'Rayssa', 'nota': 9.5},
      ]
    },
    {
      'nome': 'Turma T2',
      'alunos': [
        {'nome': 'Maria', 'nota': 8.9},
        {'nome': 'João', 'nota': 7.3},
      ]
    },
  ];

  //var alunosEscola = escola.map((e) => e['alunos']).expand((a) => a).map((e) => e['nota']).toList();
  List<dynamic> alunosEscola = escola.map((e) => e['alunos']).expand((a) => a).toList();
  print('Lista Ordenada: $alunosEscola');
  alunosEscola.sort((a, b) => a['nota'].compareTo(b['nota']));
  print('Lista Ordenada: $alunosEscola');
  double mediaNotas = alunosEscola.map((e) => e['nota']).reduce((p, c) => p + c) / alunosEscola.length;
  print('Lista Ordenada: $mediaNotas');
  alunosEscola.forEach((e) => print('${e['nome']} ${e['nota']}'));
}

main() {
  mapMap();
}
