///
/// *Conceito:
///  - Where filtro os elementos da coleção criando uma nova do mesmo tamanho ou menor
///

whereMap() {
  print('\n21.4 - Map Where\n');

  List<Map<dynamic, dynamic>> produtos = [
    {'nome': 'Notebook', 'preço': 2499, 'fragil': true},
    {'nome': 'iPad', 'preço': 4199, 'fragil': true},
    {'nome': 'iPhone', 'preço': 2299, 'fragil': true},
    {'nome': 'Magic Mouse', 'preço': 299, 'fragil': false},
  ];
  final fragil = (e) => e['fragil'] == true;
  final nome = (e) => e['nome'];
  var resultado = produtos.where(fragil).map(nome).toList();
  print('Produtos frageis: $resultado\n');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'José', 'idade': 36},
    {'nome': 'Julia', 'idade': 31},
    {'nome': 'Luiz', 'idade': 17},
  ];
  List<Map<String, dynamic>> maiores = pessoas.where((e) => e['idade'] >= 21).toList();
  Map<String, dynamic> comecaComL = pessoas.firstWhere((e) => e['nome'].startsWith('L'));
  print('Maiores: $maiores\nNomes com L: $comecaComL');
}

main() {
  whereMap();
}
