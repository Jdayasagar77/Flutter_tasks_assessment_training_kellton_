import 'package:flutter/material.dart';
import 'package:flutter_application_day11/drawers/create_drawer.dart';
import 'package:flutter_application_day11/flight_widget.dart';

class FlightFragment extends StatelessWidget {
  static const String routeName = '/flights';

  const FlightFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings App'),
      ),
      body: const FlightWidget(),
      drawer: const CreateDrawer(),
    );
  }
}
