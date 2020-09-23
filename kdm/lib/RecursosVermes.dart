import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RecursosVermes extends StatefulWidget {
  @override
  _RecursosVermesState createState() => _RecursosVermesState();
}

class _RecursosVermesState extends State<RecursosVermes> {

  List recursos = "Aranha Caranguejo,Ciclope Voador,Haremita tagarela,Barata Sibilante,Formiga Solitária,Carrapato pesadelo,Espada Escaravelho".split(",");
  List infos = [
    {
      "titulo" : "",
      "tipos" : "Pele, vermes, consumível",
      "info": "Consumir: Arquive isto e ganhe +3 de sobrevivência."
    },
    {
      "titulo" : "",
      "tipos" : "vermes, consumível",
      "info": "Consumir: Arquive isso e role 1d10.\n1 - 3 O olho da mosca explode, liberando ácidos que derretem seu interior. Você morre.\n4 - 5 Ligeiro sabor cítrico. Sem efeito.\n6+ Ganhe +1 de precisão permanente."
    },
    {
      "titulo" : "",
      "tipos" : "",
      "info": ""
    },
    {
      "titulo" : "",
      "tipos" : "vermes, consumível",
      "info": "Consumir: Arquive isto para perder toda a sobrevivência e ganhar 2d10 insanidade.\nSe você está louco, você deve consumir isso."
    },
    {
      "titulo" : "",
      "tipos" : "vermes, consumível",
      "info": "Consumir: Arquive isso para trocar seus valores de insanidade e sobrevivência. "
    },
    {
      "titulo" : "",
      "tipos" : "vermes, consumível",
      "info": "Consumir: Arquive isso e role 1d10.\n1 - 3 O carrapato agarra o céu da boca e suga todo o seu sangue. Você morre.\n4 - 5 Tem gosto de ferro. Sem efeito.\n6+ Ganhe evasão +1 permanente."
    },
    {
      "titulo" : "",
      "tipos" : "vermes, consumível",
      "info": "Consumir: Arquive isso e role 1d10.\n1 - 3 O besouro penetra em seu cérebro. Você morre instantaneamente\n4 - 5 Difícil e nojento. Sem efeito.\n6+ Ganhe +1 de força permanente."
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
        title: Text("Recursos de Vermes",),
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

