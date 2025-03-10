import 'package:ativ3/ativ3.dart' as nada;
import 'dart:io';

void main() {
  nada.nada(); // teste da lib
  print("${nada.linhazinha()}Programa de funcionarios${nada.linhazinha()}");
  nada.nada();

  Empresa empresa1 = Empresa();

  print("Pressione [ENTER] para continuar ou 0 para sair.");
  String menu = stdin.readLineSync().toString();

  while (menu != "0") {
    print(
      "1 - Adicionar Funcionario \n2 - Remover Funcionario\n3 - Listar Todos os Funcionários \n4 - Listar os dados de um funcionário específico" +
      "\n5 - Aumentar salario"
    );
    String opcao = stdin.readLineSync().toString();

            if (opcao == "1") {
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
                  empresa1.adicionarFuncionario(
                    funcionario.getNome,
                    funcionario.getCargo,
                    funcionario.getSalario,
              );
            } else if (opcao == "2") {
                  empresa1.removerFuncionario();
            } else if (opcao == "3") {
                  empresa1.listarFuncionarios();
            } else if (opcao == "4") {
                  empresa1.listarFuncionarioEspecifico();
            } else if (opcao == "5") {
                  empresa1.aumentarSalario();
            }

    print("Pressione [ENTER] para continuar ou 0 para sair.");
    menu = stdin.readLineSync().toString();
  }

  print("Obrigado por Utilizar meu programa! - Desenvolvido por GabiScha - ");
}

class Funcionario {
  late String _nome;
  late String _cargo;
  late double _salario;

  //gets e sets

  get getSalario => _salario;
  get getNome => _nome;
  get getCargo => _cargo;

  set setSalario(double salario) {
    _salario = salario;
  }

  set setNome(String nome) {
    _nome = nome;
  }

  set setCargo(String cargo) {
    _cargo = cargo;
  }
}

class Empresa {
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
    String idcru = stdin.readLineSync().toString();
    int id = int.tryParse(idcru) ?? -1;
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
    String idcru = stdin.readLineSync().toString();
    int id = int.tryParse(idcru) ?? -1;
    for (var funcionario in funcionariosdaempresa) {
      if (funcionario[0] == id) {
        print(
          "Nome: ${funcionario[1]} - Cargo: ${funcionario[2]} - Salário: R\$${funcionario[3].toString()}",
        );
        return;
      }
    }

    print("Funcionário com ID $id não encontrado.");
  }


    //Aumentar salario

  void aumentarSalario(){
    print("Digite o Id do Funcionario: ");
        String idcru = stdin.readLineSync().toString();
        int id = int.tryParse(idcru) ?? -1;
    print("Digite a porcentagem de aumento do funcionario: ");
        String porcentagem = stdin.readLineSync().toString();
    if (int.parse(porcentagem) == 0) {
    print("Porcentagem inválida.");
    return;
  }


  int i = 0;
  String funcionarioEncontrado = "nao";
  while (i < funcionariosdaempresa.length) {
    var funcionario = funcionariosdaempresa[i];
    if (funcionario[0] == id) { //se o id (indice 0) for igual

      double novoSalario = funcionario[3] + (funcionario[3] * double.parse(porcentagem) / 100);
      funcionario[3] = novoSalario;  

      print("O salário do funcionário ${funcionario[1]} foi aumentado para R$novoSalario",);
      funcionarioEncontrado = "sim";
      break; 
    }
    i++;
  }

  if (funcionarioEncontrado == "nao") {
    print("Funcionário com ID $id não encontrado.");
  }
  }
}


