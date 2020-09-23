import 'dart:math';

import 'package:flutter/material.dart';

class Disordens extends StatefulWidget {
  @override
  _DisordensState createState() => _DisordensState();
}

class _DisordensState extends State<Disordens> {

  int sort = 0;
  List disordens = "Aichmofobia,Ansiedade,Apático,Comer compulsivamente,Coprolalia,Medo do escuro,Hemofobia,Acumulador,Honroso,Hiperativo,Imortal,Indecisão,Monster Panic,Estresse pós-traumático,Presa,Quixotesco,Rageholic,Secreto,Convulsões,Melindroso,Traumatizado,Vestiphobia,Ponto fraco".split(",");
  List info = [
    "Você não pode ativar ou partir com machados, espadas, lanças, adagas, foices ou katares em sua grade de equipamentos.",
    "No início de cada confronto, ganhe o token de alvo de prioridade, a menos que você tenha equipamento fedorento em sua grade de equipamentos.",
    "Você não pode usar ou ganhar sobrevivência. Você não pode ganhar coragem. Cure este distúrbio se você tiver 8+ de compreensão.",
    "Você não pode partir a menos que tenha equipamentos consumíveis em sua grade de equipamentos. Você deve consumir se surgir a escolha de consumir.",
    "Todo o seu equipamento é barulhento. Você é sempre uma ameaça, a menos que seja derrubado, mesmo que um efeito diga o contrário.",
    "Você se aposenta.Se você ganhar essa desordem durante uma caçada ou confronto, nada acontece até retornar ao assentamento.",
    "Durante o confronto, sempre que um sobrevivente (incluindo você) ganha uma ficha de sangramento, você é derrubado.",
    "Sempre que você for um sobrevivente retornando, discarte 1 recurso ganho no último confronto e ganhe +1 de coragem.",
    "Você não pode atacar um monstro de seu ponto cego ou se ele for derrubado.",
    "Durante o confronto, você deve mover pelo menos 1 espaço a cada rodada.",
    "Enquanto você estiver louco, converta todos os danos causados aos locais de acerto em danos cerebrais. Voce não pode gastar sobrevivencia enquanto estiver louco.",
    "Se você é o revelador de eventos de caça que exigem que você faça uma rolagem, role duas vezes e use o resultado mais baixo.",
    "Sempre que você sofrer dano cerebral por uma ação de intimidação, sofra 1 dano cerebral adicional.",
    "Na próxima fase da colonia, você não contribui ou participa de quaisquer essforço. Pule a próxima caçada para se recuperar.",
    "Você não pode gastar sobrevivência a menos que seja louco.",
    "Se você estiver louco ao partir, ganhe +1 de sobrevivência e +1 de força.",
    "Sempre que você sofrer uma lesão grave, também sofrerá o frenesi do trauma cerebral.",
    "Quando você é um sobrevivente que retorna, você rapidamente se preocupa com seus próprios assuntos. Você deve pular a próxima caçada para lidar com eles.",
    "Durante o confronto, sempre que você sofrer um dano na localização de sua cabeça, você será derrubado.",
    "Você não pode partir com nenhum equipamento fedorento em sua grade de equipamentos. Se um status ou efeito tornasse você fedorento, perca toda a sua sobrevivência.",
    "Sempre que você termina seu ato adjacente a um monstro, você é derrubado.",
    "Você não pode usar armadura no local do corpo. Se você estiver usando uma armadura no local do corpo quando tiver esse distúrbio, discarte-a enquanto a arranca de seu corpo!",
    "Quando você ganhar esta desordem, role um local de acerto aleatório e grave-o. Você não pode partir, a menos que tenha uma armadura neste local de ataque.",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Disordens"),
        centerTitle: true,
      ),floatingActionButton: FloatingActionButton(
      child: Text((sort  + 1).toString()),
      onPressed: (){
        var random = new Random();
        setState(() {
          sort = random.nextInt(disordens.length);
        });
      },
    ),
      body: ListView.builder(
          itemCount: disordens.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                Container(
                    color: Colors.blueGrey,
                    height: 60.0,
                    width: double.infinity,
                    child: Center(child: Text((index + 1).toString() +" - "+disordens[index], style: TextStyle(color: Colors.white),),)
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
