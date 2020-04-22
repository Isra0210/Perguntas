import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder; //Passando a funcao responder como parametro

  Questionario({
    @required this.perguntas, //@required => Exige que os parametros sejam passados
    @required this.perguntaSelecionada,
    @required this.responder,
  });

  bool get temPerguntaSelecionada{
    //o indice tem que ser menor que o número de objetos dentro
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null; //Lista de String

    return Column(
      //Se tem pertunta selecionada mostra os widget
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']), //Passando a pergunta como parametro do construtor na classe questao
          ...respostas.map((resp) {
          return Resposta(
            resp['texto'], 
            () => responder(resp['pontuacao']),//passando a pontuação como parametro
          );
        }).toList(), //pegando os elementos da lista de String para lista de Widget
        //... spread => pegar cada elemento e jogar dentro da lista do tipo Colu
      ],
    );
  }
}
