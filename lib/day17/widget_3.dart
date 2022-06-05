import 'package:flutter/material.dart';

import 'counter_model.dart';

class Widget3 extends StatelessWidget {
const Widget3({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return ScopedModelDescendant<CounterModel>(
builder: (context, child, model) => Text(
'Widget 3 : ${model.counter}',
style: const TextStyle(fontSize: 24.0),
),
);
}
}