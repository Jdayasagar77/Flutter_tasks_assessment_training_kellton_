import 'package:flutter/material.dart';

class HotelWidget extends StatelessWidget {
  const HotelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.red,
          child: const Center(
            child: Text(
              'Hotel Page',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
