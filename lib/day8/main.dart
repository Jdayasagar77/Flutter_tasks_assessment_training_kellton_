import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1_day_8/columndemo.dart';
import 'package:flutter_application_1_day_8/counter.dart';
// ignore: unused_import
import 'package:flutter_application_1_day_8/counterrow.dart';
// ignore: unused_import
import 'package:flutter_application_1_day_8/loginscreen.dart';
// ignore: unused_import
import 'package:flutter_application_1_day_8/rowdemo.dart';
import 'package:flutter_application_1_day_8/welcome.dart';

// ignore: unused_import
import 'loginscreen1.dart';
import 'loginscreen2.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const LoginScreen2(),
      // const ColumnDemo(),
      //  const CounterApp2(),
      // const RowAppDemo(),
      // home: const Welcome(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     leading: const Icon(Icons.sports_martial_arts_rounded),
      //     title: const Text('My First App'),
      //   ),
      //   body: const Welcome(),
      // ),
      // initialRoute: "/conter",
      routes: {
        "/welcome": (context) => const Welcome(),
        "/conter": (context) => const CounterApp(),
      },
    ),
  );
}
