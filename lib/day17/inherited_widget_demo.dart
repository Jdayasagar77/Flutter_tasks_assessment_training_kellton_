import 'package:flutter/material.dart';
import 'package:kellton_flutter_training/day17/widget2.dart';
import 'package:kellton_flutter_training/day17/widget_3.dart';

import 'counter_inherited_widget.dart';
import 'my_counter.dart';
import 'widget_1.dart';

class InheritedCounterAppDemo extends StatefulWidget {
const InheritedCounterAppDemo({Key? key}) : super(key: key);

@override
State<InheritedCounterAppDemo> createState() =>
_InheritedCounterAppDemoState();
}

class _InheritedCounterAppDemoState extends State<InheritedCounterAppDemo> {
var myCounter = MyCounter(0);

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Inherited Widget Demo'),
),
body: CounterInheritedWidget(
myCounter: myCounter,
childWidget: Column(
children: [
Widget1(),
Divider(
thickness: 10.0,
),
Widget2(),
Divider(
thickness: 10.0,
),
Widget3()
],
),
),
floatingActionButton: FloatingActionButton(
onPressed: () {
setState(() {
myCounter.increaseCount();
debugPrint('${myCounter.counter}');
});
},
child: const Icon(Icons.add),
),
);
}
}
