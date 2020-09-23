import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RecursosBasicos extends StatefulWidget {
  @override
  _RecursosBasicosState createState() => _RecursosBasicosState();
}

class _RecursosBasicosState extends State<RecursosBasicos> {

  List recursos = "   ???,???,Lanterna quebrada,Lanterna quebrada,Suco do Amor,Suco do Amor,Torrão de atnas,Osso de Monstro,Osso de Monstro,Osso de Monstro,Osso de Monstro,Pele de Monstro,Pele de Monstro,Pele de Monstro,Pele de Monstro,Pele de Monstro,Pele de Monstro,Pele de Monstro,Órgão monstro,Órgão monstro,Órgão monstro,Crânio".split(",");
  List infos = [
    {
      "titulo" : "",
      "tipos" : "Pele, Osso, Orgão",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Pele, Osso, Orgão",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Sucata",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Sucata",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Orgão, Consumivel",
      "info": "Durante a fase da colonia, você pode arquivar isso na intimidade. Os sobreviventes nomeados devem ser capazes de consumir."
    },{
      "titulo" : "",
      "tipos" : "Orgão, Consumivel",
      "info": "Durante a fase da colonia, você pode arquivar isso na intimidade. Os sobreviventes nomeados devem ser capazes de consumir."
    },{
      "titulo" : "",
      "tipos" : "Osso, Pele, Orgão",
      "info": "No início da fase de assentamento, se houver 5 ou mais Cubos de Atnas no armazenamento de assentamento, seu cheiro atrai um sobrevivente, farejando na escuridão. Ganhe +1 população, este sobrevivente tem uma desordem aleatória."
    },{
      "titulo" : "",
      "tipos" : "Osso",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Osso",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Osso",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Osso",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Pele",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Pele",
      "info": ""
    },
    {
      "titulo" : "",
      "tipos" : "Pele",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Pele",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Pele",
      "info": ""
    },
    {
      "titulo" : "",
      "tipos" : "Pele",
      "info": ""
    },
    {
      "titulo" : "",
      "tipos" : "Pele",
      "info": ""
    },
    {
      "titulo" : "",
      "tipos" : "Orgao",
      "info": "Se você consumir isso, arquive este cartão. Role 1d10. Com um resultado de 6+, você contrai um parasita. Arquive todos os equipamentos consumíveis em sua grade de equipamentos agora."
    },
    {
      "titulo" : "",
      "tipos" : "Orgao",
      "info": "Se você consumir isso, arquive este cartão. Role 1d10. Com um resultado de 6+, você contrai um parasita. Arquive todos os equipamentos consumíveis em sua grade de equipamentos agora."
    },
    {
      "titulo" : "",
      "tipos" : "Orgao",
      "info": "Se você consumir isso, arquive este cartão. Role 1d10. Com um resultado de 6+, você contrai um parasita. Arquive todos os equipamentos consumíveis em sua grade de equipamentos agora."
    },
    {
      "titulo" : "",
      "tipos" : "Osso",
      "info": "Quando você ganha isso, um sobrevivente de sua escolha ganha +1 de insanidade."
    },
  ];
  String info = "";
  int numRecurso = -1;
  String titulo = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInfo();
    novoRecurso();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recursos Basicos",),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child:  Column(
          children: [
            Container(
              height: 38.0,
              child: Text(infos[numRecurso]["titulo"], style: TextStyle(fontSize: 30.0),),
            ),
            Container(
              height: 20.0,
              child: Text("("+infos[numRecurso]["tipos"]+")", style: TextStyle(fontSize: 16.0),),
            ),
            Expanded(
              child: Center(
                child: Container(
                  child: Text(infos[numRecurso]["info"],textAlign: TextAlign.center,style: TextStyle(fontSize: 22.0),),
                ),
              ),
            ),
            Container(
              height: 40.0,
              child: Text("Falta "+ infos.length.toString(), style: TextStyle(fontSize: 26.0),),
            ),
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        if((numRecurso + 1) < recursos.length){
                          setState(() {
                            numRecurso++;
                          });
                        }
                      },
                      child: Container(
                          color: Colors.grey,
                          height: 40.0,
                          child: Center(child: Text("Recurso "+ (numRecurso + 1).toString(), textAlign: TextAlign.center,),
                          )
                      ),
                    )
                ),
                RaisedButton(
                  child: Text("Novo Recurso"),
                  onPressed: novoRecurso,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void getInfo() {

    for(int i = 0; i < recursos.length; i++){
      print(recursos[i]);
      infos[i]["titulo"] = recursos[i];
    }
  }

  void novoRecurso(){
    var random = new Random();
    var indexDel = numRecurso;
    var listAux = [];

    if(numRecurso == -1){
      setState(() {
        numRecurso = random.nextInt(infos.length);
      });
    }else{

      infos.removeAt(indexDel);
      for(int i = 0; i < infos.length ; i++){
        listAux.add(infos[i]);
      }
      setState(() {
        infos = listAux;
        numRecurso = random.nextInt(infos.length);
      });

    }
  }


}

