import 'dart:math';

import 'package:flutter/material.dart';

class ArtesDeluta extends StatefulWidget {
  @override
  _ArtesDelutaState createState() => _ArtesDelutaState();
}

class _ArtesDelutaState extends State<ArtesDeluta> {

  int sort = 0;
  List artes = "Ambidestro,Berserker,Clutch Fighter,Combo Master,Enlouquecido,Bloco Crossarm,Traço duplo,Sentido Extra,Último homem de pé,Líder,Ataque poderoso,Estilo Garra de Monstro,Orador da Morte,Rhythm Chaser,Estrategista,Caçador de emoções,Olho atemporal,Difícil,Queda,Lutador inconsciente".split(",");
  List info = [
    "Todas as armas corpo a corpo em sua grade de equipamentos ganham 'par', Ambidestro não pode ser usado se houver escudos, equipamentos de duas mãos ou pesados em sua grade de equipamentos.",
    "Uma vez por confronto, você pode gastar açaõ para sofrer bash e frenesi de trauma cerebral",
    "Enquanto você tiver 3 ou mais fichas sangrentas, ganhe +1 de força e +1 de precisão.",
    "Com um acerto perfeito, faça 1 jogada de ataque adicional.",
    "Com um acerto perfeito, ganhe +1 de insanidade.",
    "Sempre que você for atingido, depois que os locais de acerto forem rolados, você pode alterar 1 resultado para o local de acerto dos braços.",
    "Durante o seu turno, uma vez por rodada, você pode gastar açao para ganhar movimento",
    "Você pode esquivar 1 vez adicional por rodada.",
    "Quando você é único sobrevivente no confronto, você não pode ganhar tokens sangrentos ou ser derrubado",
    "Sempre que você encoraja um sobrevivente, ele ganha +1 destreza até o final da rodada. Uma vez por fase de caça, você pode inspirar outro sobrevivente. Eles usam a sua compreensão e coragem para resolver um evento de caçada ou história.",
    "Em um golpe perfeito, ganhe +2 de força até o final do ataque.",
    "Ataques com punhos ganham + 1 precisao e + 1 força e 'selvagem'.",
    "Uma vez por confronto, você pode gastar ação para que todos os sobreviventes não surdos ganhem +2 de insanidade. Quando você morre, você encoraja todos os sobreviventes com suas últimas palavras.",
    "Na começo do combate, ganhe +1 evasão. Quando você for derrubado, se você não tiver um instrumento em seus equipamentos, remova todos os seus marcadores de evasão +1.O Rhythm Chaser não pode ser usado se houver algum equipamento pesado em seus equipamentos.",
    "Durante a configuração do confronto, após colocar o terreno, você pode adicionar um rosto de pedra gigante ou uma carta de terreno Pilar tombado ao tabuleiro de confronto.",
    "Sempre que você ganha sobrevivência durante a fase de confronto, ganha 1 sobrevivência adicional.",
    "Sua jogada de ataque é um acerto perfeito com um resultado de 9 ou 10.Você não pode usar o Timeless Eye se for cego",
    "Ao rolar em uma tabela de lesão, a menos que você role 1, adicione +1 ao resultado.(Isso não inclui trauma cerebral. O resultado não pode exceder 10.)",
    "Quando algo colidir com você, role 1d10. Com um resultado de 6+, você consegue sair do caminho . coloque o sobrevivente de pé no espaço livre mais próximo fora do caminho de colisão.",
    "São necessários 7 tokens sangrentos para matá-lo.",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Artes De luta"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Text((sort + 1).toString()),
        onPressed: (){
          var random = new Random();
          setState(() {
            sort = random.nextInt(artes.length);
          });
        },
      ),
      body: ListView.builder(
          itemCount: artes.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                Container(
                    color: Colors.blueGrey,
                    height: 60.0,
                    width: double.infinity,
                    child: Center(child: Text((index+1).toString()+" - "+artes[index], style: TextStyle(color: Colors.white),),)
                ),
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white,
                    width: double.infinity,
                    child: Center(child: Text(info[index], style: TextStyle(color: Colors.black),),)
                )
              ],
            );
          }
      ),
    );
  }
}
