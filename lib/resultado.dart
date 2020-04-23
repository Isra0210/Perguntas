import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao <= 10) {
      return 'Estamos quase! Pontuação: $pontuacao';
    } else if (pontuacao <= 15) {
      return 'Você é bom! Pontuação: $pontuacao';
    } else if (pontuacao <= 20) {
      return 'Arrasou!! Pontuação: $pontuacao';
    } else {
      return 'JEDIII!! Pontuação: $pontuacao';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Center(
            child: Text(
              fraseResultado,
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
        ),
        Container(
          child: RaisedButton(
            textColor: Colors.white,
            color: Color.fromRGBO(128, 0, 128, 0.8),
            child: Text('Reiniciar?'),
            onPressed: quandoReiniciarQuestionario,
          ),
          margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
        ),
      ],
    );
  }
}
