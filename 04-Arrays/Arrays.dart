void main() {
  print('04.1 - Arrays\n');

  ///
  /// Array é uma lista dinamica e ordenada de elementos entre []
  ///

  var textos = ['Rayssa', 'Ellen'];
  var numeros = [1, 2.5, 5, 31, 22];
  var condicoes = [!false, true, false, true];

  print('${textos[0]} e ${textos[1]}');
  print('${textos[0]} tem ${numeros[4]} anos');
  print('${textos[1]} ${numeros[3] > 17 ? 'é maior' : 'não é maior'} de idade');

  bool verdadeiro = !false;
  var arrayDincamico = ['teste', [], 3, 1.5, verdadeiro];
  print(arrayDincamico);
  arrayDincamico[0] = textos[0];
  arrayDincamico[1] = ['Rio', 'Mar', 'Oceano'];
  arrayDincamico[2] = numeros[2];
  arrayDincamico[3] = numeros[1];
  arrayDincamico[4] = !verdadeiro;
  print(arrayDincamico);

  print('\n04.2 - Arrays Funcoes\n');

  arrayDincamico.add(condicoes[3]); //serve para add um elemento no fim do array
  arrayDincamico.insert(0, 'leia'); //serve para add um elemento ao local escolhido, ao fazer isso fasta o elemento que antes estava no local
  print(arrayDincamico);
  arrayDincamico.remove(1); //remove um elemento da array, dentro do () para escolhe qual elemento deve ser removido
  arrayDincamico.removeRange(1, 4); //remove uma sequencia de elementos onde o primeiro elemento dentro do parentences é referente ao primeiro numero a ser removido enquanto o sengundo é o último a ser removido
  arrayDincamico.remove('leia'); //outra forma de fazer a remoção é digitando o nome que deseja ser removido
  print(arrayDincamico.length); //esse legth server para ver o tamanho da array

  arrayDincamico.clear(); //serve para limpa toda a array

  numeros = [10, 5, 1, 2.25, 7.5];
  numeros.sort(); // serve para ordena os numeros dentro da array
  print(numeros);
  textos = ['Rayssa', 'Lais', 'Isabela'];
  textos.sort((a, b) => a.compareTo(b)); // basta inverte a e b assim terá uma lista em ordem decrescente, como eu já tinha escrito nessa ordem troquei
  print(textos);
}
