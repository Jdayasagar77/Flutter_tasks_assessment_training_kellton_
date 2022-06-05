// ignore: unused_import
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
// ignore: unused_import
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_day11/hotel_widget.dart';

import 'cab_widget.dart';
import 'flight_widget.dart';

class BookingsBottomNavApp extends StatefulWidget {
  const BookingsBottomNavApp({Key? key}) : super(key: key);

  @override
  State<BookingsBottomNavApp> createState() => _BookingsBottomNavAppState();
}

class _BookingsBottomNavAppState extends State<BookingsBottomNavApp> {
  static int _currentIndex = 0;
  // ignore: non_constant_identifier_names
  final tab_widgets = [
    const HotelWidget(),
    const FlightWidget(),
    const CabWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Booking App By DJ77',
        ),
      ),
      // body: tab_widgets[_currentIndex],
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.blueAccent,
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      // currentIndex: _SelectedTab.values.indexOf(_selectedTab),
      //     onTap: _handleIndexChanged,
      // selectedFontSize: 24,
      // unselectedFontSize: 14,
      body: const Center(),
      extendBody: true, //<------like this
      bottomNavigationBar: DotNavigationBar(
        // currentIndex: _currentIndex,

        dotIndicatorColor: Colors.black,
        items: [
          // Icon(Icons.hotel, size: 30),
          // Icon(Icons.flight, size: 30),
          // Icon(Icons.directions_car, size: 30),
          DotNavigationBarItem(
            icon: const Icon(Icons.hotel),
            selectedColor: Colors.pink,
          ),

          /// Search
          DotNavigationBarItem(
            icon: const Icon(Icons.flight),
            selectedColor: Colors.orange,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: const Icon(Icons.directions),
            selectedColor: Colors.teal,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
