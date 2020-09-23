import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Terrenos extends StatefulWidget {
  @override
  _TerrenosState createState() => _TerrenosState();
}

class _TerrenosState extends State<Terrenos> {

  List terrenos = "2 plantas de acanto,2 plantas de acanto,2 plantas de acanto,2 plantas de acanto,2 grama alta,2 grama alta,3 colunas de pedra,3 colunas de pedra,Inseto fragmentado,Monstro Morto,Detritos,Detritos,Rosto de Pedra Gigante,Rosto de Pedra Gigante,Árvore do pesadelo,Veio de minério,Veio de minério,Cadáver de Sobrevivente,Pilar Derrubado,Pilar Derrubado".split(',');
  int numRecurso = -1;
  List info = [
    {
      "titulo": "",
      "setup": "Configure pelo menos 6 espaços de distância de todas as outras plantas de Acanthus."
    },{
      "titulo": "",
      "setup": "Configure pelo menos 6 espaços de distância de todas as outras plantas de Acanthus."
    },{
      "titulo": "",
      "setup": "Configure pelo menos 6 espaços de distância de todas as outras plantas de Acanthus."
    },{
      "titulo": "",
      "setup": "Configure pelo menos 6 espaços de distância de todas as outras plantas de Acanthus."
    },
    {
      "titulo": "",
      "setup": "Configure pelo menos 4 espaços de distância de toda a grama alta."
    },
    {
      "titulo": "",
      "setup": "Configure pelo menos 4 espaços de distância de toda a grama alta."
    },
    {
      "titulo": "",
      "setup": "Configure pelo menos 4 espaços de todos os outros terrenos."
    },
    {
      "titulo": "",
      "setup": "Configure pelo menos 4 espaços de todos os outros terrenos."
    },
    {
      "titulo": "",
      "setup": "Configure ao lado do monstro. (Salvo indicação em contrário nas instruções de configuração do confronto.)"
    },
    {
      "titulo": "",
      "setup": "Configure ao lado do monstro."
    }
    ,
    {
      "titulo": "",
      "setup": "Configure adjacente a qualquer borda da placa."
    } ,
    {
      "titulo": "",
      "setup": "Configure adjacente a qualquer borda da placa."
    } ,
    {
      "titulo": "",
      "setup": "Configure pelo menos 5 espaços de distância de todas as bordas da placa."
    }
    ,
    {
      "titulo": "",
      "setup": "Configure pelo menos 5 espaços de distância de todas as bordas da placa."
    }
    ,
    {
      "titulo": "",
      "setup": "Configure pelo menos 5 espaços de distância de todas as bordas da placa."
    } ,
    {
      "titulo": "",
      "setup": "Configure pelo menos 6 espaços de todos os outros terrenos."
    }
    ,
    {
      "titulo": "",
      "setup": "Configure pelo menos 6 espaços de todos os outros terrenos."
    } ,
    {
      "titulo": "",
      "setup": "Configure pelo menos 6 espaços de todos os outros terrenos."
    } ,
    {
      "titulo": "",
      "setup": "Configure pelo menos 6 espaços de todos os outros terrenos."
    } ,
    {
      "titulo": "",
      "setup": "Configure pelo menos 5 espaços de distância do monstro."
    }
    ,
    {
      "titulo": "",
      "setup": "Configure pelo menos 5 espaços de distância do monstro."
    }
  ];

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
              height: 50.0,
              child: Text(info[numRecurso]["setup"], style: TextStyle(fontSize: 20.0),),
            ),
            Expanded(
              child: Center(
                child: Container(
                  child: Text(info[numRecurso]["titulo"],textAlign: TextAlign.center,style: TextStyle(fontSize: 26.0),),
                ),
              ),
            ),

            Container(
              height: 40.0,
              child: Text("Falta "+ terrenos.length.toString(), style: TextStyle(fontSize: 26.0),),
            ),
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        if((numRecurso + 1) < terrenos.length){
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

    for(int i = 0; i < terrenos.length; i++){
      info[i]["titulo"] = terrenos[i];
    }
  }

  void novoRecurso(){
    var random = new Random();
    var indexDel = numRecurso;
    var listAux = [];

    if(numRecurso == -1){
      setState(() {
        numRecurso = random.nextInt(info.length);
      });
    }else{

      info.removeAt(indexDel);
      for(int i = 0; i < info.length ; i++){
        listAux.add(info[i]);
      }
      setState(() {
        info = listAux;
        numRecurso = random.nextInt(info.length);
      });

    }
  }


}

