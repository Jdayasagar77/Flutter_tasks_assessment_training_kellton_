import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/painting.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:kellton_flutter_training/State%20App%20Evaluation%20Assessment%20Day14/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      // For small iphone?android, we use scroll so that it can cover the bottom
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            '/images/indiamap.jpg',
            // 'https://www.oecd.org/media/oecdorg/satellitesites/grs/Active-with-India-2019-cover-594x393.jpg'
            height: 400,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Stateui()));
              },
              child: const Text(
                'Lets Get Started',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
