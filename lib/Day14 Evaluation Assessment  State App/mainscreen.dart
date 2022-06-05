import 'package:flutter/material.dart';
import 'package:kellton_flutter_training/State%20App%20Evaluation%20Assessment%20Day14/displayState.dart';
import 'package:kellton_flutter_training/State%20App%20Evaluation%20Assessment%20Day14/login_page.dart';
// import 'package:kellton_flutter_training/stateApp/homepage.dart';
// import 'package:kellton_flutter_training/stateApp/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        StateDetails.routeName: (context) => const StateDetails(),
      },
    );
  }
}

























//     routes: {
// '/': (context) => LVDemo3(),
// SpeakerDetails.routeName: (context) => const SpeakerDetails(),
// },
      // home: MyTwitterApp(),
      // home: SweeterApp(),
       
      // Twitter(),
      // bottomNavigationBar: BottomNavigationBar( items: [ BottomNavigationBarItem( title: Text(''), icon: Icon(FontAwesomeIcons.home, color: selectedPageIndex == 0 ? Colors.blue : Colors.blueGrey), ), BottomNavigationBarItem( title: Text(''), icon: Icon(FontAwesomeIcons.search, color: selectedPageIndex == 1 ? Colors.blue : Colors.blueGrey), ), BottomNavigationBarItem( title: Text(''), icon: Icon(FontAwesomeIcons.bell, color: selectedPageIndex == 2 ? Colors.blue : Colors.blueGrey), ), BottomNavigationBarItem( title: Text(''), icon: Icon(FontAwesomeIcons.envelope, color: selectedPageIndex == 3 ? Colors.blue : Colors.blueGrey), ), ], onTap: (index) { setState(() { selectedPageIndex = index; }); }, currentIndex: selectedPageIndex, ),
// import 'package:flutter/material.dart';
// import 'package:kellton_flutter_training/day13/demo1.dart';
// import 'package:kellton_flutter_training/day13/sweeter.dart';
// // import 'package:kellton_flutter_training/day13/twitter/abhishekTwitter.dart';
// import 'package:kellton_flutter_training/day13/twitter/myTwitter.dart';