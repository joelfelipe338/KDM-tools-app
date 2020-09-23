import 'dart:math';

import 'package:flutter/material.dart';

class ArtesDelutaSecretas extends StatefulWidget {
  @override
  _ArtesDelutaSecretasState createState() => _ArtesDelutaSecretasState();
}

class _ArtesDelutaSecretasState extends State<ArtesDelutaSecretas> {

  int sort = 0;
  List artes = "Besta da Caratose,Sussurrador de ossos,Graça de Dormenatus,Rei das Mil Batalhas,Passo do Rei,Pulmões lendários,Lanterna de Lucernae,Punho vermelho,Estudioso da morte,Promessa do espadachim,Golpe Sincronizado,Presença Zero".split(",");
  List info = [
    "Voce pode se 'Concentrar' se fizer isso, execute a habilidade no inicio do proximo turno. apareça ao lado do monstro, acione uma arma, sua destreza é igual a sua infinidade vermelha, vc acerta automaticamente e ganha força igual ao dobro das afinidades vermelhas. Entao ganhe +6 XP.",
    "Quando alguem morrer coloque um token no local, se passar por cima vc come o cranio, se cure e rola o dado 1d10 + XP:\n1-3: ganhe +1 Movimento,destreza e evasão permanente\n4-8: ganhe +1 força permanente.\n 9-18: ganhe uma arte e +5 sobrevivencia.\n19+: Voce foge no final do confronto, vc se vai para sempre. ",
    "Voce pode se 'Concentrar' se fizer isso, execute a habilidade no inicio do proximo turno. Tds ganham armadura em tds os locais de acerto igual as suas afinidades verdes. Eles podem remover até o mesmo numero de tokens. Ganhe +6 XP, se vc ainda existir ganhe prioridade.",
    "ganha 2 precisao, 2 força e 2 evasao. vc pode esquivas quantas vezes quiser, apenas um sobrevivente pode ter essa arte.",
    "Sempre que atacar pode descarta qualquer numero de pressao de batalha e puxar o mesmo numero de novas cartas. Sempre que atacar, depois de puxar as cartas de locais, mas antes de rolar para ferir, vc pode descartar uma carta e compra outra.",
    "uma vez por ataque, para cada acerto, faça uma jogada adicional.",
    "Voce pode se 'Concentrar' se fizer isso, execute a habilidade no inicio do proximo turno. Revele locais de acerto igual a metade de suas afinidades azuis(para baixo), um de cada vez. O monstro sofre um dano critico em qualquer local com efeito de dano critico(ignore armadilha), reembaralhe e ganhe + 6XP.",
    "No inicio de cada confronto, cada um ganha um token de +1 força, tds podem a ficha no lugar de sobrevivencia.",
    "Na chegada, ganhe tokens de relançamentos iguais ao numero de volumes sobre sua presa. Descarte um token de rolar para rolar novamente um dos seus resultados durante um confronto.",
    "Na chegada, ganhe sobrevivencia ate o limite da colonia, vc tiver uma espada nos seus equipamentos.",
    "ganha +1 precisao e +1 força (1 vez), quando atacar e um outro sobrevivente com a mesma habilidade estiver diretamente no lado oposto do monstro.",
    "Ganhe +1 força ao atacar no ponto cego, sempre que vc ataca um monstro é considerado no ponto fraco."
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Artes De luta Secretas"),
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
