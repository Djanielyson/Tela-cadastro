import 'package:flutter/material.dart';
import 'package:teste/Atividade%203/funcionario_reserva.dart';
import 'package:teste/Atividade%203/page_detalhes.dart';

class PageCadrasto extends StatefulWidget {
  @override
  _PageCadrastoState createState() => _PageCadrastoState();
}

class _PageCadrastoState extends State<PageCadrasto> {
  String opcaolhida;
  double slider = 0;
  bool valor1 = false;
  bool valor2 = false;
  TextEditingController nome = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding:false,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Page Cadastro",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Nome",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: nome,
              decoration: InputDecoration(
                  labelText: "Nome", border: OutlineInputBorder()),
            ),
            Text(
              "Email",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  labelText: "Email", border: OutlineInputBorder()),
            ),
            Text(
              "Selecione seu sexo",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              title: Text("Feminino"),
              value: "Feminino",
              groupValue: opcaolhida,
              onChanged: (String valor) {
                setState(() {
                  opcaolhida = valor;
                });
              },
            ),
            RadioListTile(
              title: Text("masculino"),
              value: "Masculino",
              groupValue: opcaolhida,
              onChanged: (String valor) {
                setState(() {
                  opcaolhida = valor;
                });
              },
            ),
            Text(
              "Qual linguagem deseja usar para trabalhar",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            CheckboxListTile(
                title: Text("Java"),
                value: valor1,
                onChanged: (bool value) {
                  setState(() {
                    valor1 = value;
                    valor2 = false;
                  });
                }),
            CheckboxListTile(
                title: Text("Dart"),
                value: valor2,
                onChanged: (bool value) {
                  setState(() {
                    valor2 = value;
                    valor1 = false;
                  });
                }),
            Text(
              "Selecione a faixa salá pretendido",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Slider(
                value: slider,
                min: 0,
                max: 4000,
                divisions: 20,
                label: slider.round().toString(),
                onChanged: (double teste) {
                  setState(() {
                    slider = teste;
                  });
                }),
            RaisedButton(
              color: Colors.blue[700],
                onPressed: (){
                if(valor1 == true){
                  FuncionarioReservaState.trabalho = "Java";
                }
                if(valor2 == true){
                  FuncionarioReservaState.trabalho = "Dart";
                }
                FuncionarioReservaState.nome = nome.text;
                FuncionarioReservaState.email = email.text;
                FuncionarioReservaState.sexo = opcaolhida;
                FuncionarioReservaState.salario = slider.toString();
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> PageDatalhe()));
            },
              child: Text("Ver Detalhes",style: TextStyle(
                color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}
