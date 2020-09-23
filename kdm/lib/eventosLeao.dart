import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EventosLeao extends StatefulWidget {
  @override
  _EventosLeaoState createState() => _EventosLeaoState();
}

class _EventosLeaoState extends State<EventosLeao> {

  List huntEvents = [];
  List titulos = "Brisa Aromática, Leão com Calor, Escultura de leão, Território Marcado, Leão Rondando, Arranhando, Mar de Grama Dourada, Filhote de leão branco ".split(",");
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
        title: Text("Leao Branco",),
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
    rootBundle.loadString('texts/eventosLeao.txt').then((value){
      huntEvents = value.split("/");
      novoEvent();
    });

  }
}
