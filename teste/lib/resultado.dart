import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if(pontuacao < 8) {
      return 'Parabéns';
    } else if(pontuacao < 12) {
      return 'Ótimo!';
    } else if(pontuacao < 16) {
      return 'Sensacional!';
    } else {
      return 'Lendário!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
              fraseResultado,
              style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          child: Text('Reiniciar?'),
          style: TextButton.styleFrom(
            textStyle: TextStyle(color: Colors.blue, fontSize: 18)),
          onPressed: quandoReiniciarQuestionario,
        ),
      ],
    );
  }
}