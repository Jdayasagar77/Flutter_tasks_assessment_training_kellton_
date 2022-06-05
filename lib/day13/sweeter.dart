import 'package:flutter/material.dart';
// import 'package:flutter_application_day13/tweets.dart';
import 'package:kellton_flutter_training/day13/tweets.dart';

class SweeterApp extends StatelessWidget {
  const SweeterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: const Icon(Icons.cake),
              // child: const CircleAvatar(
              //   child: Text("Swetter"),
              //   radius: 15.0,
              // ),
              margin: const EdgeInsets.only(right: 30.0),
            ),
            const Text("Sweeter"),
            const Icon(Icons.search)
          ],
        ),
        elevation: 4.0,
      ),
      body: allTweets(),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
            ),
            color: Colors.blue,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
            color: const Color.fromARGB(255, 55, 64, 71),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            ),
            color: const Color.fromARGB(255, 50, 161, 40),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mail_outline),
            color: const Color.fromARGB(255, 110, 46, 86),
          )
        ],
      )),
    );
  }
}
