import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pomodoro_mobx/store/pomodoro.store.dart';

class SetaBotao extends StatelessWidget {
  final IconData icone;
  final void Function()? alterarValor;

  const SetaBotao({
    super.key,
    required this.icone,
    required this.alterarValor,
  });

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(15),
        backgroundColor: store.estaTrabalhando() ? Colors.red : Colors.green,
      ),
      onPressed: this.alterarValor,
      child: Row(
        children: [Icon(icone)],
      ),
    );
  }
}
