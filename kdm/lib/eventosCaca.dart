import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EventosCaca extends StatefulWidget {
  @override
  _EventosCacaState createState() => _EventosCacaState();
}

class _EventosCacaState extends State<EventosCaca> {
  List huntEvents = [];
  List titulos = "Lanternas quebradas,Cadáver,Pombos cancerosos,Fome,Campo de Carne,Estátua sem rosto,Hungry Ground,Fumaça Uivante,Luz dourada,Colheitadeira,Excrementos de monstro,Destiny-Bound,Sobrecarga,Encontro de azar,Armadilha,Pesadelos,Cara a cara,Erva daninha morta,Exalação das Trevas,Terras Secas,Desenhos,Chuva ácida,Água limpa,Comida da boca de outras pessoas,Titãs no Escuro,Cova,Ladrões de homens,Trollbird,Ferreiro escuro,Rostos podres,Caminho Estranho,Loucura repentina,Ele sussurra seu nome,Miséria debilitante,Forno Lanterna Quebrada,Na trilha,Perdido,Gregalope,Névoa Pesada,Sonhe,Pesadelo,Cirurgião,Fresh Kill,Oportunistas,Vale Jagged,Rio,Árvores de banquete,Aposta da morte,Pus Fields,Forca,Refugiados,Madfly,Vendedor de Máscaras,Tempestade óssea,Deslizamento de lama,Monstro Morto,Risada de Gorm,Perfume no vento,Sinais de batalha,Incêndios,Raio Congelado,Espaço entre as Rochas,Pés,Fonte de Pedra,Estátua,Palavra Proibida,Saliva Pools,Um rosto familiar,Espaço de tempo,Tumba de Excelência,Relíquia encontrada,Algo para passar o tempo,Brasa dourada,Antler-Gouged,Ops!,Sonhe o caminho,Buraco,Dead Great Game Hunter,Morrendo de pequeno garimpeiro,Lovelorn Rock,Campo de Armas,Consumindo grama,Flesh Monolith,Livro do Escriba,Teste de Coragem,Túneis Pútridos,Caras chorando,A espada e a estátua,Cleaner Birds,Luz no horizonte,O início,Falha no início,Sobrevivente perdido,Bagunça enjoativa,Grim and Frostbitten,Estranho Manto,Pedra Viva,Olhos ensanguentados,Portcullis,O final".split(",");
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
        appBar: AppBar(title: Text("KDM Events"), centerTitle: true,),
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
        )
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
    rootBundle.loadString('texts/eventos.txt').then((value){
      huntEvents = value.split("/");
      novoEvent();
    });

  }
}
