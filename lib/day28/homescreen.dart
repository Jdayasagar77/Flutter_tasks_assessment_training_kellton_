import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home of Authentication'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Present in the Home Screen'),
             Center(
              child: ElevatedButton(
                child: const Text('Logout'),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
        ),
    )]));
  }
}