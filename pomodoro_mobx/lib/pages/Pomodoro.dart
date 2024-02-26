import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_mobx/components/Cronometro.dart';
import 'package:pomodoro_mobx/components/EntradaTempo.dart';
import 'package:provider/provider.dart';
import 'package:pomodoro_mobx/store/pomodoro.store.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntradaTempo(
                    titulo: 'Trabalho',
                    valor: store.tempoTrabalho,
                    incremento: store.iniciado && store.estaTrabalhando()
                        ? null
                        : store.incrementarTempoTrabalho,
                    decremento: store.iniciado && store.estaTrabalhando()
                        ? null
                        : store.decrementarTempoTrabalho,
                  ),
                  EntradaTempo(
                    titulo: 'Descanso',
                    valor: store.tempoDescanso,
                    incremento: store.iniciado && store.estaDescansando()
                        ? null
                        : store.incrementarTempoDescanso,
                    decremento: store.iniciado && store.estaDescansando()
                        ? null
                        :  store.decrementarTempoDescanso,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
