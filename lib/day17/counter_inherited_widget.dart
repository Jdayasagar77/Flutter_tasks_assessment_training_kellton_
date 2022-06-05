import 'package:flutter/material.dart';
import 'my_counter.dart';

class CounterInheritedWidget extends InheritedWidget {
  final MyCounter myCounter;
  final Widget childWidget;

  const CounterInheritedWidget(
      {Key? key, required this.myCounter, required this.childWidget})
      : super(key: key, child: childWidget);

  @override
  bool updateShouldNotify(covariant CounterInheritedWidget oldWidget) {
    return myCounter != oldWidget.myCounter;
  }

  static CounterInheritedWidget? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType(aspect: CounterInheritedWidget);
}
