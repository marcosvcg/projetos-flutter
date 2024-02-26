import 'package:flutter/material.dart';

class CounterState {
  int _value = 0;

  void increment() => _value++;
  void decrement() => _value--;
  int get value => _value;

  bool isDifferent(CounterState old) {
    return old._value != _value;
  }
}

class CounterProvider extends InheritedWidget {
  final CounterState state = CounterState();

  CounterProvider({super.key, required Widget child}) : super(child: child);

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) { 
    return oldWidget.state.isDifferent(state);
  }
}