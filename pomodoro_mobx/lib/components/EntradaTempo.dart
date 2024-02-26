import 'package:flutter/material.dart';
import 'package:pomodoro_mobx/components/SetaBotao.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? incremento;
  final void Function()? decremento;

  const EntradaTempo({
    super.key,
    required String this.titulo,
    required int this.valor,
    this.incremento,
    this.decremento,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.titulo,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SetaBotao(
              icone: Icons.arrow_downward,
              alterarValor: decremento,
            ),
            Text(
              '${this.valor} min',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SetaBotao(
              icone: Icons.arrow_upward,
              alterarValor: incremento,
            ),
          ],
        ),
      ],
    );
  }
}
