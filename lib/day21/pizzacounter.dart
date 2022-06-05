import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class PizzCounter extends StatelessWidget {
  const PizzCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numberOfPizza = Provider.of<PizzaProvider>(context).numberOfPizzas;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Pizzas'),
        ),
        body: Column(
          children: [
            Text('You have Pizza $numberOfPizza'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<PizzaProvider>().changePizzaNumber(numberOfPizza + 1);
          },
          child: const Icon(Icons.add),
        ));
  }
}



// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class PizzaProvider with ChangeNotifier {
//   int numberOfPizzas = 0;
//   int get numberOfPizza => numberOfPizzas;
//   PizzaProvider({required this.numberOfPizzas});
//   changePizzaNumber(int newValue) {
//     numberOfPizzas = newValue;
//     notifyListeners();
//   }
// }

// class PizzaText extends StatelessWidget {
//   const PizzaText({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text('${context.watch<PizzaProvider>()}');
//   }
// }

// Main File

// import 'package:flutter/material.dart';

// class Screen1 extends StatelessWidget {
//   const Screen1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: PizzCounter(),
//     );
//   }
// }

// Future main() async {
//   runApp(MultiProvider(
//     providers: [
//       ChangeNotifierProvider(create: (_) => PizzaProvider(numberOfPizzas: 1)),
//     ],
//     child: const Screen1(),
//   ));
// }
