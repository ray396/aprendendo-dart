/**
 * *Tratamento de exceções
 *  - try: usado para testar uma lógica
 *  - catch: captura erros na lógica try.
 *  - on: captura especificação/conhecidos na lógica try
 *  - throw exception: exceção criada pelo usuário e tratada no catch
 *  - finally: executado ao final try/catch, com exceção ou não! utilizado liberar recursos na lógica try
*/

///
/// CASO1: Quando você desconhe a exceção, use a clausula TRY CATCH
///

caso1() {
  print('22.1.1 - try catch\n');

  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e) {
    print('Exceção: $e');
  }
}

///
/// CASO2: Quando você conhece a exceção, use a clausula ON
///

caso2() {
  print('22.1.2 - ON\n');

  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } on IntegerDivisionByZeroException {
    print('Exceção: Não é possivel dividir por zero!');
  } catch (e) {
    print('Exceção: $e');
  }
}

///
///CASO3: Para descobrir eventos ocorridos antes da exceção, use Stack Trace!
///

caso3() {
  print('22.1.3 - Stack Tarce\n');

  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e, s) {
    print('Exceção: $e');
    print('Stack Tarce: $s');
  }
}

///
///CASO4: Use finally para tratamentos apos excecução de Try Catch, usada para liberar recursos utilizados na logica Try Catch
///

caso4() {
  print('22.1.4 - Finally\n');

  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e) {
    print('Exceção: $e');
  } finally {
    print('finally: com ou sem exceção "finally" sera executado!');
  }
}

///
///CASO4: Use finally para tratamentos apos excecução de Try Catch, usada para liberar recursos utilizados na logica Try Catch
///

caso5() {
  print('22.1.5 - Throw Exception\n');

  try {
    int valorA = 1, valorB = 0;
    double resultado = valorA / valorB;
    if (resultado.isInfinite) throw Exception('A variavel valorB deve ser != 0');
    print('Resultado: $resultado');
  } catch (e) {
    print('Exceção: $e');
  } finally {
    print('finally: com ou sem exceção "finally" sera executado!');
  }
}

main() {
  print('22.1 - tratamento de excecoes\n');

  caso1();
  caso2();
  caso3();
  caso4();
  caso5();
}
