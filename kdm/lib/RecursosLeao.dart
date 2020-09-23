import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RecursosLeao extends StatefulWidget {
  @override
  _RecursosLeaoState createState() => _RecursosLeaoState();
}

class _RecursosLeaoState extends State<RecursosLeao> {

  List recursos = "Mão curiosa, Olho de gato, Bigodes dourados, Ossos de grande gato, Ossos de grande gato, Ossos de grande gato, Ossos de grande gato, Garra de leão, Garra de leão, Garra de leão, Cauda de leão, Testiculos de leão, Juba cintilante, tendão, tendão, pêlo branco , Pelo Branca, Pelo Branca, Pelo Branca".split(',');
  List infos = [
    {
      "titulo" : "",
      "tipos" : "Pele",
      "info": "Quando você ganha isso, um sobrevivente aleatório ganha +1 de insanidade."
    },{
      "titulo" : "",
      "tipos" : "Orgão, Consumivel",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Orgão",
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
    },{
      "titulo" : "",
      "tipos" : "Pele",
      "info": "Arquive isto para ganhar 2 recursos básicos de pele."
    },
    {
      "titulo" : "",
      "tipos" : "Orgão",
      "info": ""
    },{
      "titulo" : "",
      "tipos" : "Orgão",
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
      "tipos" : "Pele",
      "info": ""
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
        title: Text("Leao Branco",),
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

