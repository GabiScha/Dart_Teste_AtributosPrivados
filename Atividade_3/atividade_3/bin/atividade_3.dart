import 'package:atividade_3/atividade_3.dart' as atividade_3;
import 'dart:io';

void main(List<String> arguments) {
  void enter() {
    stdin.readLineSync();
  }
  
  print('--- Classe Funcionario e Empresa ---');
  print(' ');
  print('Nome do funcionario:');
  
  String? nome = stdin.readLineSync();
  print('Funcionário selecionado: $nome');
  print('Pressione [ENTER] para inserir os outros dados. . .');
  enter();
  print('Nome do funcionario:');
  String? id = stdin.readLineSync();



  Funcionario funcionario1 = Funcionario();
  funcionario1.setNome = nome;
  funcionario1.setId = id;
  print(funcionario1.getNome);
   print(funcionario1.getId);

  funcionario1.MostrarDados();

}

class Funcionario{
  final funcionario = [0,'', '', 0];
  String _nome = "";
  int _id = 0;

  get getId{
    funcionario[0] = _id;
    return _id;
  }

  set setId(id)
  {
    _id = id;
  }

  get getNome{
    funcionario[1] = _nome;
    return _nome;
  }

  set setNome(nome)
  {
    _nome = nome;
  }

  void MostrarDados(){
    print(funcionario[1]);
  }

}



