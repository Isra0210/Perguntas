import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto); //recebendo a pergunta pelo construtor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,//pegando o valor máximo da tela para que fique cetralizado
      margin: EdgeInsets.all(15),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
