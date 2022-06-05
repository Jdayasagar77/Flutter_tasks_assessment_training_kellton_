import 'package:flutter/material.dart';
import 'package:kellton_flutter_training/State%20App%20Evaluation%20Assessment%20Day14/service.dart';
class StateDetails extends StatelessWidget {
  static const routeName = '/displayState';
  const StateDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var states1 = ModalRoute.of(context)!.settings.arguments as State1;

    return Scaffold(
      appBar: AppBar(
        title: Text(states1.name1),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 20.0,
            color: Colors.blueAccent,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(child: Image.asset(states1.image)),
                  Center(
                    child: Text(
                      states1.name1,
                      style: const TextStyle(fontSize: 30.0),
                    ),
                  ),
                  Text(
                    states1.capital,
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    states1.chiefMinister,
                    style: const TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    states1.area,
                    style: const TextStyle(fontSize: 30.0),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    states1.description,
                    style: const TextStyle(fontSize: 30.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
