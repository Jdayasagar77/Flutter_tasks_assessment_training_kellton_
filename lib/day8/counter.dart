import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1_day_8/welcome.dart';

//? Step 1:
class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);
  @override
  State<CounterApp> createState() => _CounterAppState();
}

//? Step 2:
class _CounterAppState extends State<CounterApp> {
//? Step 2.1:
  int _counter = 0;
//? Step 3:
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.calculate),
          title: const Text('Counter App')),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Text(
            'You have Clicked $_counter times',
            style: const TextStyle(fontSize: 30.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
