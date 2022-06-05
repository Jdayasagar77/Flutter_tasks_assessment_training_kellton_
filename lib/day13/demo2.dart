import 'package:flutter/material.dart';

class LVDemo2 extends StatelessWidget {
  LVDemo2({Key? key}) : super(key: key);
  final _courses = ['asdfghj', 'xgcfvhbnm', 'sdgcfhvbnm', 'sdfgcfhvbn'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Authered Courses'),
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10.0,
              shadowColor: Colors.blue,
              child: ListTile(
                title: Text(_courses[index]),
                trailing: const Icon(Icons.forward),
              ),
            ),
          );
        }),
        separatorBuilder: (context, index) => const Divider(
          color: Colors.cyanAccent,
          thickness: 1.0,
        ),
        itemCount: _courses.length,
      ),
    );
  }
}
