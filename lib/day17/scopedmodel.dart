import 'package:flutter/material.dart';
import 'package:kellton_flutter_training/day17/widget1.dart';


import 'counter_model.dart';
import 'my_counter.dart';
import 'widget_2.dart';
import 'widget_3.dart';

class ScopedModelDemo extends StatefulWidget {
const ScopedModelDemo({Key? key}) : super(key: key);

@override
State<ScopedModelDemo> createState() => _ScopedModelDemoState();
}

class _ScopedModelDemoState extends State<ScopedModelDemo> {
var myCounter = MyCounter(0);
@override
Widget build(BuildContext context) {
return ScopedModel(
model: CounterModel(),
child: Scaffold(
appBar: AppBar(
title: const Text('Counter App using ScopedModel'),
),
body: Column(
children: const [
Widget1(),
Divider(
thickness: 20.0,
),
Widget2(),
Divider(
thickness: 20.0,
),
Widget3()
],
),
floatingActionButton: ScopedModelDescendant<CounterModel>(
builder: (context, child, model) => FloatingActionButton(
onPressed: () {
model.add();
},
child: const Icon(Icons.add),
),
),
),
);
}
}