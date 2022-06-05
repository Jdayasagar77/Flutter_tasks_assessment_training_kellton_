// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(const GetMaterialApp(home:MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
// home: CatalogScreen(),
//     );
//   }
// }
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


// import 'package:flutter/material.dart';

// import 'Diary/pages/home_page.dart';
// import 'Diary/pages/login/login_page.dart';

// void main() => runApp(MyApp());

// final routes = {
//   '/login': (BuildContext context) => const LoginPage(),
//   '/home': (BuildContext context) => HomePage(),
//   '/': (BuildContext context) => const LoginPage(),
// };

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // ignore: unnecessary_new
//     return new MaterialApp(
//       title: 'Diary App',
//       theme: ThemeData(primarySwatch: Colors.teal),
//       routes: routes,
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:kellton_flutter_training/Shopping%20Cart%20Evaluation%20Assesment%20Day23/productcatalogue.dart';

// Future main() async {
//   runApp(const SMDemoApp());
// }

// class SMDemoApp extends StatelessWidget {
//   const SMDemoApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//         debugShowCheckedModeBanner: false, home: ProductsCatalog());
//   }
// }
