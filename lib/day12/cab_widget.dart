import 'package:flutter/material.dart';

class CabWidget extends StatelessWidget {
  const CabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 118, 43, 153),
          child: const Center(
            child: Text(
              'Cab Page',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
