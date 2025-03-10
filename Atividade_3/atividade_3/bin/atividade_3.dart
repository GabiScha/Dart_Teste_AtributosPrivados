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

// import 'package:ativ3/ativ3.dart' as nada;
// import 'dart:io';
// void main() {
//   nada.nada(); // teste da lib
//   print("${nada.linhazinha()}Programa de funcionarios${nada.linhazinha()}");
//   nada.nada();

  

//   print("Escreva o Id do funcionario: ");
//   int? id = int.tryParse(stdin.readLineSync().toString());
//   print("Funcionario selecionado: id $id!");
//   nada.nada;
//   print("Escreva o Nome do funcionario: ");
//   String? nome = stdin.readLineSync().toString();
//   nada.nada;
//   print("Escreva o Cargo do funcionario: ");
//   String? cargo = stdin.readLineSync().toString();

//   Funcionario funcionario1 = Funcionario(id, nome, cargo);
//   print("${funcionario1.id}");


//   Empresa empresa1 = Empresa();
//   empresa1.adicionarFuncionario(int.parse(id.toString()), nome, cargo, 1000);
//   print(empresa1.funcionariosdaempresa);

// }


// class Funcionario{
// late final int _id;
// late final String _nome;
// late final String _cargo;
// late final double _salario;

// //gets e sets

// get getSalario => _salario;
// get getId => _id;
// get getNome => _nome;
// get getCargo => _cargo;


// set setSalario(double salario){
//   _salario = salario;
// }
// set setNome(String nome){
//   _nome = nome;
// }
// set setCargo(String cargo){
//   _cargo = cargo;
// }


// }

// class Empresa{

//    List<List<dynamic>> funcionariosdaempresa = [];


//    void adicionarFuncionario(int id, String nome, String cargo, double salario) {
//     funcionariosdaempresa.add([id, nome, cargo, salario]);
//    }


// }




