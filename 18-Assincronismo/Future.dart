///
/// * Future:
///   - É objeto que retorna um valor ou erro, resultado de uma execução assincrona/futura.
///

// função retorna string
String tarefa({int tempo = 1}) {
  var msg = status(tempo);
  return 'Status: $msg';
}

Future<String> status([int tempo]) {
  return Future.delayed(Duration(seconds: tempo), () => 'Primeira Tarefa finalizada\n');
}

void novaTarefa({int tempo = 1}) {
  Future.delayed(Duration(seconds: tempo), () => print('\nStatus: Segunda Tarefa finalizada!\n'));
}

void contagem({int segundos = 3}) {
  print('Corregando...\n');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('\nConcluido!');
    });
  }
}

main() {
  print('21.1 - Futures\n');

  print(tarefa(tempo: 4)); // o print é executado antes do termino do future

  novaTarefa(tempo: 4); // o print é executado no future!

  contagem();
}
