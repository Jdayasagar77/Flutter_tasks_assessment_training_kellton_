import 'package:flutter/material.dart';

//? Step 1:
class CounterApp2 extends StatefulWidget {
  const CounterApp2({Key? key}) : super(key: key);
  @override
  State<CounterApp2> createState() => _CounterApp2State();
}

//? Step 2:
class _CounterApp2State extends State<CounterApp2> {
//? Step 2.1:
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.calculate),
        title: const Text('Counter App'),
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Text(
            'You have Clicked $_counter times',
            style: const TextStyle(fontSize: 30.0),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
//? Step 4:
              setState(() {
                _counter++;
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 20.0,
          ),
          FloatingActionButton(
            onPressed: () {
//? Step 4:
              setState(() {
                _counter--;
              });
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
