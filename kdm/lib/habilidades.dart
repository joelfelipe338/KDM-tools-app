import 'dart:math';

import 'package:flutter/material.dart';

class Habilidades extends StatefulWidget {
  @override
  _HabilidadesState createState() => _HabilidadesState();
}

class _HabilidadesState extends State<Habilidades> {

  int sort = 0;
  List habilidades = "Aceleração,Palmas ácidas,Sem idade,Sobrecarga de agressão,Analisar,Frenesi amargo,Nervos Queimados,Caratose,Pele de cristal,Dormenatus,Explorar,Batalha predestinada,Coração da Espada,Pele iridescente,Vontade de ferro,Chamado Lendario,Leyline Walker,Troca de vida,Limb-maker,Lucernae,Oráculo louco,Casamenteiro,Rendição metabólica,Mandibula de Metal,Sangue do Pesadelo,Membrana do Pesadelo,ESporas do Pesadelo,Parceiro,Inigualável,Possuído,Preparado,Presságio,Intocada,Psychovore,Reflexão,Refração,Enraizado para todos,Morte azeda,Robusto,História do Forsaker,História do Goblin,História do Jovem Herói,Super cabelo,Doce batalha,Chamado do trovão,Funileiro,Doze dedos,Sucessão de Crepúsculo,Fúria Desinibida,Caminho da Ferrugem".split(",");
  List info = ["Adicione um d10 ao movimento.",
    "Adiciona um d10 de força quando atacar com as mãos.",
    "Pode caçar mesmo aposentado, ganha XP se quiser.",
    "Adicione mais um rolagem de ataque a seu ataque.",
    "No início do turno dos sobreviventes, se você estiver próximo ao monstro, revele a carta de IA do topo e coloque-a de volta no topo do baralho.",
    "Cada confronto, a primeira vez que você sofrer o frenesi do trauma cerebral, ganhe 1d10 de sobrevivência. Você pode gastar a sobrevivência enquanto Frenético.",
    "Voce é imune a bash.",
    "Antes de fazer uma jogada de ataque, você pode declarar Caratosis X. Se o fizer, esse ataque ganha X acertos automáticos. X não pode ser maior do que suas afinidades vermelhas totais. Quando o ataque terminar, ganhe + X XP de caça. Quando você ativar o Idade 2, ganhe a arte de luta secreta da Besta de Caratosis.",
    "Você ignora maldições e não pode usar armadura. Quando você partir, ganhe 3 defesa em todos os locais. Sofra -2 ao resultado de todos os testes de lesão grave. Quando você participa da Intimidade, os recém-nascidos ganham Pele de Cristal além de qualquer outro resultado de teste.",
    "Quando você sofrer dano, você pode declarar Dormenatus X, se o fizer, ganhe X pontos de armadura para cada local atingido. X não pode ser mais do que suas afinidades verdes totais. Depois que o dano for resolvido, ganhe + X XP de caça. Ao ativar a Idade 2, ganhe a arte de luta secreta Graça de Dormenatus.",
    "Quando você rola em uma mesa de investigação, adiciona +2 ao resultado do seu teste.",
    "No inicio do combate ganhe +1 de destreza.",
    "Se você ganhar uma proficiência em arma durante o Resultado, ganhe +3 graduações adicionais. Você tosse um pedaço de seu próprio sangue solidificado e ganha +1 de recurso estranho de Ferro.",
    "Ganha 1 de defesa para todos os locais, para cada afinidade de cor diferente em sua gride.",
    "Voce não pode ser derrubado e reduça lançamento para 1",
    "Uma vez na vida, em um espaço de tabuleiro de caça após a escuridão esmagadora, em vez de rolar um evento de caça aleatório, use 53 como resultado.",
    "Quando não ouver nenhuma armadura ou acessorio, ganhe +3 evasão.",
    "No fim de cada batalha ganhe um XP adicional, se ativar o evento segredo branco, voce deixa de existir, se se aposentar deixa de existir.",
    "Uma vez por fase de assentamento, gaste 2 Esforço para esculpir uma protese. Remova o ferimento desmembrado de um sobrevivente e adicione 1 osso ao armazenamento do assentamento.",
    "Antes de fazer uma tentativa de ferimento, voce pode declarar Lucernae X. Se você fizer isso, aquela tentativa de ferimento ganha X Sorte. X não pode ser mais do que suas afinidades azuis totais. Quando o ataque terminar, ganhe + X XP de caça.Quando você ativar o Idade 2, ganhe a arte de luta secreta da Lanterna de Lucernae.",
    "Uma vez por confronto, conforme um monstro compra uma IA, nomeie uma carta. Se a carta de IA comprada for a carta nomeada, ganhe +1 token de evasão.",
    "Quando você é um sobrevivente que retorna, uma vez por ano-lanterna, você pode usar Intimidade.",
    "A qualquer momento durante o confronto, você pode lançar o Dado. Ganhe o dobro de sobrevivência. Nesta rodada, ignore os efeitos negativos de lesões permanentes, deficiências, distúrbios e atributos negativos (incluindo tokens). No final da rodada, você morre.",
    "Quando atacar sem armas, adicione um d10 de força.",
    "Sempre que você ganhar uma ficha de sangramento, adicione 1 a todos os locais de acerto.",
    "Você pode gastar mov/açao para trocar qualquer 1 token por +1 token força.",
    "Uma vez por confronto, você pode gastar toda a sua sobrevivência (pelo menos 1) para perder todos os seus marcadores de força +1 e ganhar aqueles marcadores de sorte +1.",
    "Quando você ganhar essa habilidade, adicione o nome do seu parceiro. Os parceiros só podem se nomear para Intimidade. Quando seu parceiro morre, ganha um distúrbio aleatório e perde essa habilidade.",
    "Quando você ganha insanidade, pode ganhar uma quantidade igual de sobrevivência.",
    "O sobrevivente não pode usar especialização em arma, domínio de arma ou artes de luta.",
    "Ao rolar para determinar um retardatário(evento de caça), adicione sua experiência ao resultado do teste.",
    "Cada vez que você atacar, antes de puxar os locais de acerto, diga um nome.Se você acerta qualquer local de acerto com o nome, ganha +3 de insanidade e +10 de força ao tentar ferir-lo.",
    "Quando você sofrer um ferimento grave desmembrado, ignore e ganhe 1 ficha de sangramento.",
    "Uma vez por confronto, você pode comer o distúrbio de um sobrevivente adjacente. Se você fizer isso, remova o distúrbio. Eles ganham 1 ficha de sangramento e você ganha +1 de força permanente. No final do confronto, se você não comeu um distúrbio, você morre.",
    "Suas afinidades completas e metades de afinidade incompletas contam como todas as cores. Você pode esquivar a qualquer momento e quantas vezes quiser em cada rodada. Quando você ataca de um ponto cego, adicione + 1d10 a todas as tentativas de ferimento para aquele ataque.",
    "Suas afinidades completas e metades de afinidade incompletas contam como todas as cores. Durante o Showdown, após realizar uma ação de sobrevivência, ganhe +1 de sobrevivência.",
    "Se você estiver no início de seu turno, revele as 2 primeiras cartas do baralho de IA e coloque-as de volta em qualquer ordem.",
    "Quando você é derrubado, você pode se encorajar. Se o fizer, ganhe +1 ficha de força.",
    "Ignore ser derrubado por trauma cerebral e ações de intimidação.",
    "Você não pode ser derrubado durante um confronto com um Nemesis.",
    "Uma vez por confronto, você pode lançar 1d10. Com 3+, ganhe a ficha de alvo de prioridade e o monstro ganha +1 ficha de dano.",
    "No início de cada um de seus turnos, você pode escolher ganhar 1 de sobrevivência e 2 fichas de sangramento.",
    "Você pode gastar açao para trocar livremente quaisquer tokens com sobreviventes adjacentes que tenham Super Hair.",
    "Você pode usar refelxo sem gastar sobrevivência. Se o fizer, o mesm deve ser usado para ativar uma arma.",
    "Uma vez na vida, em um espaço de tabuleiro de caça após a escuridão esmagadora, em vez de rolar um evento de caça aleatório, use 100 como resultado.",
    "Quando você for um sobrevivente retornando, ganhe +1 para usar esta fase da colonia.",
    "Você não pode carregar equipamentos para as duas mãos. Em um golpe perfeito,Ganhe +5 de insanidade e +1 de sorte no ataque. No entanto, para cada 1 rolado normal ao tentar acertar, Sofre 5 danos cerebrais e -1 de sorte no ataque.",
    "Se você morrer durante o confronto e tiver uma Espada do Crepúsculo, nomeie outro sobrevivente no quadro do confronto para ganhar a Espada do Crepúsculo e essa habilidade.",
    "Adicione + 1d10 de força a uma tentativa de ferimento.",
    "Seus marcadores de sangramento também são marcadores de evasão +1.",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Habilidades"),
    centerTitle: true,
    ),floatingActionButton: FloatingActionButton(
      child: Text((sort + 1).toString()),
      onPressed: (){
        var random = new Random();
        setState(() {
          sort = random.nextInt(habilidades.length);
        });
      },
    ),
      body: ListView.builder(
          itemCount: habilidades.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                Container(
                    color: Colors.blueGrey,
                    height: 60.0,
                    width: double.infinity,
                    child: Center(child: Text((index+1).toString()+" - "+ habilidades[index], style: TextStyle(color: Colors.white),),)
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
