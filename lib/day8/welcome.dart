import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Colors.black45,
          ],
        ),
      ),
     
      child: const Center(
        child: Text.rich(
          TextSpan(text: 'Flutter ', style: TextStyle(fontSize: 30), children: [
            TextSpan(
              text: 'Rocks ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
            TextSpan(
              text: '- Sekhar ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                fontSize: 34.0,
              ),
            ),
          ]),
        ),
      
      ),
    
      

      // child: Text(
      //   'Welcome to my New App',
      //   style: TextStyle(
      //     fontSize: 30,
      //     fontWeight: FontWeight.bold,
      //     color: Colors.yellow,
      //     backgroundColor: Colors.black38,
      //   ),
      // ),
    );
  }
}
