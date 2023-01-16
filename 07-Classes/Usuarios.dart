class Usuario {
  late String usuario;
  late String senha;

  void autenticar() {
    //simulação de uma recuperação do banco de dados
    var usuario = 'ray396';
    var senha = '123';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuario autenticado!\n');
    } else {
      print('Usuario não autenticado!\n');
    }
  }
}
