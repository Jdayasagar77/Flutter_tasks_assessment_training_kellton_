import 'package:flutter/material.dart';
// import 'package:flutter_application_day11/bookings_bottom_nav.dart';
import 'package:flutter_application_day11/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Day 11',
      home: BookingsDrawerApp(),
    );
  }
}
