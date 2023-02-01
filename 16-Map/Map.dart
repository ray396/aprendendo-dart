import 'dart:collection';

///
/// * Conceito
///   - Map é uma coleção dinamica e custumizável de chaves e valores entre {}. As chaves são unicas, e os valores não se repetem
///

linkedHashMap() {
  print('21.1 - LinkedHashMap == Map\n');

  List<String> nomes = ['Fernando', 'Leila'];
  Map<int, String> nomesMap = nomes.asMap(); // converte uma Lista em Map
  print('\n$nomesMap');
  nomesMap.forEach((chave, valor) => print('$chave: $valor'));

  Map<String, dynamic> frutas = Map();
  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde'; // mesma chave atualiza o valor
  frutas['goiaba'] = 'amarela';
  frutas['maçâ'] = 'vermelho';
  print('\n$frutas');
  print(frutas.containsKey('banana'));
  print(frutas.containsValue('azul'));
  print(frutas['banana']);
  frutas.clear();
  // não aceita chave e valor nulos
  print('$frutas\n');

  Map<String, dynamic> usuario = Map.from({'nome': 'Fernando', 'idade': 36, 'peso': 65.5});
  usuario.update('nome', (valor) => '$valor Martins');
  usuario.update('idade', (valor) => ++valor);
  usuario.update('peso', (valor) => 70, ifAbsent: () => 'indefinido');
  print(usuario);
  usuario.removeWhere((chave, valor) => chave == 'peso' && valor == 70);
  usuario.update('peso', (valor) => 70, ifAbsent: () => 'indefinido');
  usuario.putIfAbsent('altura', () => 1.83);
  usuario.addAll({'sexo': 'masculino', 'casado': true});
  print('\n$usuario');
  print('chaves: ${usuario.keys} \n${usuario.values}');

  Map<int, dynamic> numeros = {0: 'zero', 1: 'um', 2: 'dois'};
  print(numeros);
  print(numeros.map((chave, valor) => MapEntry(chave, '${valor.toUpperCase()}'))); // mapeando valores
}

main() {
  linkedHashMap();
}
