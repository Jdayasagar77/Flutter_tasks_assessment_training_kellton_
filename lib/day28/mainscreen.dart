import 'package:flutter/material.dart';
import 'package:kellton_flutter_training/day28/homescreen.dart';
import 'package:kellton_flutter_training/day28/loginscreen.dart';
import 'package:kellton_flutter_training/day28/userregister.dart';

class AuthenticationDay extends StatelessWidget {
  const AuthenticationDay({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Authentication',
     initialRoute: '/',
     routes: {
       '/':(context) => const HomeScreen(),
       '/login':(context) =>const LoginScreen(),
       '/signup':(context)=> const SignUp(),
     },
      
    );
  }
}