import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;

  Resultado(this.pontuacao);

  String get fraseResultado{
    if(pontuacao <= 10){
      return 'Parabéns!';
    } else if(pontuacao <= 15){
      return 'Você é bom!';
    } else if(pontuacao <= 20){
      return 'Impressionante!';
    } else{
      return 'Arrasou';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Center(
            child: Text(
              'Parabéns',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
  }
}