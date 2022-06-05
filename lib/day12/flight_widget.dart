import 'package:flutter/material.dart';

class FlightWidget extends StatelessWidget {
  const FlightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(255, 70, 143, 139),
          child: const Center(
            child: Text(
              'Flight Page',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
