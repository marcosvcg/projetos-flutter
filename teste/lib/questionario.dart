import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int pontuacao) quandoResponder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String,Object>>
        : [];
    return Column(
      children: <Widget> [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
        .map((resposta) {
          return Resposta(
            resposta['texto'] as String,
            () => quandoResponder(int.parse(resposta['pontuacao'].toString())),
          );
        }).toList(),
      ],
    );
  }
}

// Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
// ...respostas.map((txt) => Resposta(txt, _responder)).toList(),