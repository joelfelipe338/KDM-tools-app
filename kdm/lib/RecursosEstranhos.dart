import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RecursosEstranhos extends StatefulWidget {
  @override
  _RecursosEstranhosState createState() => _RecursosEstranhosState();
}

class _RecursosEstranhosState extends State<RecursosEstranhos> {

  List recursos = "Líquen Negro,Membrana Cocoon,Dentes de gato mais velho,Acanto Fresco,Ferro,Tubo de lanterna,Couro,Cadinho Perfeito,Phoenix Crest,Chifres lendários,Segundo coração".split(",");
  List infos = [
    {
      "titulo" : "",
      "tipos" : "osso, pele, órgão, consumível, outro",
      "info": "Você pode consumir isso. Se o fizer, seus lábios ficarão grisalhos, seu cabelo ficará branco e você ficará infértil. Ganhe +1 de coragem, +1 de compreensão e sofra com os órgãos genitais destruídos, graves lesões na cintura."
    },
    {
      "titulo" : "",
      "tipos" : "órgão, outro",
      "info": ""
    },
    {
      "titulo" : "",
      "tipos" : "Osso",
      "info": ""
    },
    {
      "titulo" : "",
      "tipos" : "Erva",
      "info": "Arquive isso para curar totalmente 1 local de acerto, incluindo níveis de lesão e pontos de armadura."
    },
    {
      "titulo" : "",
      "tipos" : "Sucata",
      "info": ""
    },
    {
      "titulo" : "",
      "tipos" : "Orgão, Sucata",
      "info": "Quando você ganhar isso, role 1d10. Em um 6+, você encontra algo preso dentro! Adicione 1 recurso básico de Lanterna Quebrada ao armazenamento do assentamento."
    },
    {
      "titulo" : "",
      "tipos" : "Pele",
      "info": ""
    },
    {
      "titulo" : "",
      "tipos" : "Ferro",
      "info": "Quando você cria com o Perfect Crucible, uma bactéria antiga é liberada no ar. Suporta -1d10 população e arquiva este cartão."
    },
    {
      "titulo" : "",
      "tipos" : "Orgão",
      "info": ""
    },
    {
      "titulo" : "",
      "tipos" : "Osso, Sucata",
      "info": ""
    },
    {
      "titulo" : "",
      "tipos" : "Orgão, Osso",
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
        title: Text("Recursos Estranhos",),
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

