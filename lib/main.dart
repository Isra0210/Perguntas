import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

/*StatelessWidget qrecomendado usar
 StatefulWidget recomendado para usar quando iremos tratar de estado através de uma classe
 Recomendado evitar o maximo para nao usar StatefulWidget
*/
class _PerguntaAppState extends State<PerguntaApp> {
  //gerenciando a classe Pergunta app
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [ //Todo "_" antes de qualquer atributo ou método torna ele privado
    //Lista de _Perguntas
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': [
        {'texto': 'Azul', 'pontuacao': 10}, 
        {'texto': 'Preto', 'pontuacao': 8}, 
        {'texto': 'Branco', 'pontuacao': 5}, 
        {'texto': 'Vermelho', 'pontuacao': 2}, 
      ],
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 8},
        {'texto': 'Elefante', 'pontuacao': 5},
        {'texto': 'Girafa', 'pontuacao': 2},
      ],
    },
    {
      'texto': 'Qual é seu time favorito?',
      'respostas': [
        {'texto': 'Corinthans', 'pontuacao': 8},
        {'texto': 'São Paulo', 'pontuacao': 2},
        {'texto': 'Grêmio', 'pontuacao': 5},
        {'texto': 'Atlético Paranaense', 'pontuacao': 10},
        ],
    },
  ];
  
  bool get temPerguntaSelecionada{
    //o indice tem que ser menor que o número de objetos dentro
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if(temPerguntaSelecionada){ 
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Color.fromRGBO(128, 0, 128, 1),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: temPerguntaSelecionada ?  
          Questionario(
            perguntas: _perguntas,
            perguntaSelecionada: _perguntaSelecionada,
            responder: _responder,
          )
          : Resultado(_pontuacaoTotal),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
//retorna um estado
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
