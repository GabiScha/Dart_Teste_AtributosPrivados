import 'package:ativ3/ativ3.dart' as nada;
import 'dart:io';
void main() {
  nada.nada(); // teste da lib
  print("${nada.linhazinha()}Programa de funcionarios${nada.linhazinha()}");
  nada.nada();

  Empresa empresa1 = Empresa();

  print("Pressione [ENTER] para continuar e 0 para sair.");
  String menu = stdin.readLineSync().toString();

  while (menu != "0"){

    print("1 - Adicionar Funcionario \n2 - Remover Funcionario\n3 - Listar Todos os Funcionários \n4 - Listar os dados de um funcionário específico ");
    String opcao = stdin.readLineSync().toString();

        if (opcao == "1"){
          print("Digite o nome do Funcionario: ");
          Funcionario funcionario = Funcionario();
          String nome = stdin.readLineSync().toString();
          funcionario.setNome = nome;
          print("Digite o cargo do Funcionario: ");
          String cargo = stdin.readLineSync().toString();
          funcionario.setCargo = cargo;
          print("Digite o Salario do Funcionario: ");
          String salario = stdin.readLineSync().toString();
          funcionario.setSalario = double.parse(salario);
          empresa1.adicionarFuncionario(funcionario.getNome, funcionario.getCargo, funcionario.getSalario);
        } else if (opcao == "2"){
          empresa1.removerFuncionario();
        } else if (opcao == "3"){
          empresa1.listarFuncionarios();
        }else if (opcao == "4"){
          empresa1.listarFuncionarioEspecifico();
        }


  menu = stdin.readLineSync().toString();
  }

  print("Obrigada por Utilizar meu programa! - Desenvolvido por GabiScha - ");



// empresa1.listarFuncionarioEspecifico();




  // print("Digite o nome do Funcionario: ");
  // Funcionario funcionario = Funcionario();
  // String nome = stdin.readLineSync().toString();
  // funcionario.setNome = nome;
  // print("Digite o cargo do Funcionario: ");
  // String cargo = stdin.readLineSync().toString();
  // funcionario.setCargo = cargo;
  // print("Digite o Salario do Funcionario: ");
  // String salario = stdin.readLineSync().toString();
  // funcionario.setSalario = double.parse(salario);
  // empresa1.adicionarFuncionario(funcionario.getNome, funcionario.getCargo, funcionario.getSalario);

  


  // print("Digite o nome do Funcionario: ");
  // nome = stdin.readLineSync().toString();
  // funcionario.setNome = nome;
  // print("Digite o cargo do Funcionario: ");
  // cargo = stdin.readLineSync().toString();
  // funcionario.setCargo = cargo;
  // print("Digite o Salario do Funcionario: ");
  // salario = stdin.readLineSync().toString();
  // funcionario.setSalario = double.parse(salario);
  // empresa1.adicionarFuncionario(funcionario.getNome, funcionario.getCargo, funcionario.getSalario);

  // empresa1.listarFuncionarios();

}


class Funcionario{
late String _nome;
late String _cargo;
late double _salario;

//gets e sets

get getSalario => _salario;
get getNome => _nome;
get getCargo => _cargo;


set setSalario(double salario){
  _salario = salario;
}
set setNome(String nome){
  _nome = nome;
}
set setCargo(String cargo){
  _cargo = cargo;
}


}

class Empresa{

    List<List<dynamic>> funcionariosdaempresa = [];
    int _proximoId = 1;

    // Metodo adicionar funcionario
    void adicionarFuncionario(String nome, String cargo, double salario) {
    funcionariosdaempresa.add([_proximoId, nome, cargo, salario]);
    _proximoId++;
   }

    // Metodo remover funcionario

    void removerFuncionario() {
    print("Digite o Id do Funcionario que deseja remover: ");
    String id = stdin.readLineSync().toString();
    funcionariosdaempresa.removeWhere((funcionario) => funcionario[0] == id);
  }

    // Metodo Listar funcionarios

    void listarFuncionarios() {
    for (var funcionario in funcionariosdaempresa) {
      print(funcionario);
    }
  }

    // Mostrar informações do funcionario selecionado

  void listarFuncionarioEspecifico() {
    print("Digite o Id do Funcionario: ");
    String id = stdin.readLineSync().toString();
    for (var funcionario in funcionariosdaempresa) {
      if (funcionario[0] == id) {
        print("Nome: ${funcionario[1]} - Cargo: ${funcionario[2]} - Salário: R${funcionario[3].toString()}");
        return;
      }
    }
    print("Funcionário com ID $id não encontrado.");
  }

}

//Aumentar salario?


