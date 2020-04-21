import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(PerguntaApp());

/*StatelessWidget qrecomendado usar
 StatefulWidget recomendado para usar quando iremos tratar de estado através de uma classe
 Recomendado evitar o maximo para nao usar StatefulWidget
*/
class _PerguntaAppState extends State<PerguntaApp> {
  //gerenciando a classe Pergunta app
  var _perguntaSelecionada = 0;

  void _responder() {
    int i = 0;

    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  final perguntas = [
    'Qual é sua cor favorita?',
    'Qual é seu animal favorito?',
    'Qual é seu time favorito?',
    'Qual é sua música Favorita',
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Color.fromRGBO(128, 0, 128, 1),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            //Passando a pergunta como parametro do construtor na classe questao
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(25, 0, 5, 15),
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Resposta 1'),
                    onPressed: _responder,
                  ),
                  RaisedButton(
                    child: Text('Resposta 2'),
                    onPressed: _responder,
                  ),
                  RaisedButton(
                    child: Text('Resposta 3'),
                    onPressed: _responder,
                  ),
                ],
              ),
            ),
          ],
        ),
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
