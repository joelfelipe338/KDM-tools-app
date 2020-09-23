import 'package:flutter/material.dart';
import 'package:kdm/RecursosBasicos.dart';
import 'package:kdm/RecursosEstranhos.dart';
import 'package:kdm/RecursosLeao.dart';
import 'package:kdm/RecursosVermes.dart';
import 'package:kdm/artesDeLuta.dart';
import 'package:kdm/artesDeLutaSecretas.dart';
import 'package:kdm/disordens.dart';
import 'package:kdm/eventosAntilope.dart';
import 'package:kdm/eventosCaca.dart';
import 'package:kdm/eventosLeao.dart';
import 'package:kdm/habilidades.dart';
import 'package:kdm/terrenos.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KDM Tools"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EventosLeao()));
                },
                child: Container(
                    color: Colors.blueGrey,
                    height: 60.0,
                    width: double.infinity,
                    child: Center(child: Text("Eventos do Leão", style: TextStyle(color: Colors.white),),)
                ),
              )
            ),
            Card(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EventosCaca()));
                  },
                  child: Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: double.infinity,
                      child: Center(child: Text("Eventos de Caça", style: TextStyle(color: Colors.white),),)
                  ),
                )
            ),
            Card(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecursosLeao()));
                  },
                  child: Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: double.infinity,
                      child: Center(child: Text("Recursos Leão", style: TextStyle(color: Colors.white),),)
                  ),
                )
            ),
            Card(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecursosBasicos()));
                  },
                  child: Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: double.infinity,
                      child: Center(child: Text("Recursos Basicos", style: TextStyle(color: Colors.white),),)
                  ),
                )
            ),
            Card(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Terrenos()));
                  },
                  child: Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: double.infinity,
                      child: Center(child: Text("Terrenos", style: TextStyle(color: Colors.white),),)
                  ),
                )
            ),
            Card(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Habilidades()));
                  },
                  child: Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: double.infinity,
                        child: Center(child: Text("Habilidades", style: TextStyle(color: Colors.white),),)
                  ),
                )
            ),
            Card(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Disordens()));
                  },
                  child: Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: double.infinity,
                      child: Center(child: Text("Disordens", style: TextStyle(color: Colors.white),),)
                  ),
                )
            ),
            Card(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ArtesDeluta()));
                  },
                  child: Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: double.infinity,
                      child: Center(child: Text("Artes de Luta", style: TextStyle(color: Colors.white),),)
                  ),
                )
            ),Card(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ArtesDelutaSecretas()));
                  },
                  child: Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: double.infinity,
                      child: Center(child: Text("Artes de Luta Secretas", style: TextStyle(color: Colors.white),),)
                  ),
                )
            ),Card(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EventosAntilope()));
                  },
                  child: Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: double.infinity,
                      child: Center(child: Text("Eventos Antilope", style: TextStyle(color: Colors.white),),)
                  ),
                )
            ),Card(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecursosEstranhos()));
                  },
                  child: Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: double.infinity,
                      child: Center(child: Text("Recursos Estranhos", style: TextStyle(color: Colors.white),),)
                  ),
                )
            ),Card(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecursosVermes()));
                  },
                  child: Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: double.infinity,
                      child: Center(child: Text("Recursos de Vermes", style: TextStyle(color: Colors.white),),)
                  ),
                )
            ),
          ],
        )
      ),
    );
  }
}
