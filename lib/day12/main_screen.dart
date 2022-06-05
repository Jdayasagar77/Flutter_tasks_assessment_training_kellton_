import 'package:flutter/material.dart';
import 'package:flutter_application_day11/drawers/pages_routes.dart';
import 'package:flutter_application_day11/fragments/cab_fragment.dart';
import 'package:flutter_application_day11/fragments/default_fragment.dart';
import 'package:flutter_application_day11/fragments/flight_fragment.dart';
import 'package:flutter_application_day11/fragments/hotel_fragment.dart';

class BookingsDrawerApp extends StatelessWidget {
  const BookingsDrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PageRoutes.home,
      routes: {
        PageRoutes.home: (context) => const DefaultFragment(),
        PageRoutes.hotel: (context) => const HotelFragment(),
        PageRoutes.flight: (context) => const FlightFragment(),
        PageRoutes.cab: (context) => const CabFragment()
      },
    );
  }
}
