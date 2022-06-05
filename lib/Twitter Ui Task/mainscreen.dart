import 'package:flutter/material.dart';
import 'package:kellton_flutter_training/Twitter%20Ui%20Task/mytwitter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTwitterApp(),
      // Twitter(),
    );
  }
}
