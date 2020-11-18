import 'package:flutter/material.dart';
import 'package:teste/Atividade%203/funcionario_reserva.dart';
import 'package:teste/Atividade%203/page_cadastro.dart';


class PageDatalhe extends StatefulWidget {
  @override
  _PageDatalheState createState() => _PageDatalheState();
}

class _PageDatalheState extends State<PageDatalhe> {
 PageCadrasto pc = new PageCadrasto();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Page Detalhes",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
          Text("Nome", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
          Text(FuncionarioReservaState.nome),
          Text("Email", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          Text(FuncionarioReservaState.email),
          Text("Sexo",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          Text(FuncionarioReservaState.sexo),
          Text("Linguagem para trabalho", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
          Text(FuncionarioReservaState.trabalho),
          Text("Salário Pretendido", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          Text("RS " + FuncionarioReservaState.salario),
          RaisedButton(
            color: Colors.blue[700],
            onPressed: (){

              Navigator.push(context, new MaterialPageRoute(builder: (context)=> PageCadrasto()));
            },
            child: Text("Voltar",style: TextStyle(
                color: Colors.white
            ),),
          )

        ],
      ),
    );
  }
}
