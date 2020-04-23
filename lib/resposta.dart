import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function () onClick;

  Resposta(this.texto, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Color.fromRGBO(128, 0, 128, 0.8),
        child: Text(texto),
        onPressed: onClick,
      ),
      margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
    );
  }
}
