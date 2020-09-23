import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EventosAntilope extends StatefulWidget {
  @override
  _EventosAntilopeState createState() => _EventosAntilopeState();
}

class _EventosAntilopeState extends State<EventosAntilope> {

  List huntEvents = [];
  List titulos = "Tapete de Carrapatos,Antílope Morto,Terras Devoradas,Campo de Pastoreio,Migração,Arisco,Debandada,Dentição,Pilha de vômito".split(",");
  String event = "";
  int numEvento = 0;
  String titulo = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadAsset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Antilope Gritante",),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child:  Column(
          children: [
            Container(
              height: 38.0,
              child: Text(titulos[numEvento], style: TextStyle(fontSize: 30.0),),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Text(event,style: TextStyle(fontSize: 16.0),),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        if((numEvento + 1) < huntEvents.length){
                          setState(() {
                            numEvento++;
                            event = huntEvents[numEvento];
                          });
                        }
                      },
                      child: Container(
                          color: Colors.grey,
                          height: 40.0,
                          child: Center(child: Text("Evento "+ (numEvento + 1).toString(), textAlign: TextAlign.center,),
                          )
                      ),
                    )
                ),
                RaisedButton(
                  child: Text("Novo Evento"),
                  onPressed: novoEvent,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  void novoEvent(){
    var random = new Random();
    numEvento = random.nextInt(huntEvents.length);
    setState(() {
      event = huntEvents[numEvento];
    });
  }

  Future<String> loadAsset() async {
    rootBundle.loadString('texts/eventosAntilope.txt').then((value){
      huntEvents = value.split("/");
      novoEvent();
    });

  }
}
