import 'package:flutter/material.dart';

import 'appuser.dart';
import 'database.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({Key? key}) : super(key: key);

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  var unameController = TextEditingController();
  var passwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products '),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              const Expanded(
                child: Text('User name :'),
              ),
              Expanded(
                child: TextField(
                  controller: unameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'User name',
                    hintText: 'Enter User name',
                    icon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const Expanded(
                child: Text('Password :'),
              ),
              Expanded(
                child: TextField(
                  controller: passwdController,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Password',
                    icon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              var username = unameController.text;
              var password = passwdController.text;
              var result =
                  await AppDatabase.instance.validateUser(username, password);
              if (result) {
                //Code to Naviagte for Success page
              } else {
                //Raise an alert or Toast message
              }
            },
            child: const Text('Login'),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const Expanded(
                child: Text('New Users ?'),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    var username = unameController.text;
                    var password = passwdController.text;
                    var appUser =
                        AppUser(userName: username, password: password);
                    var result =
                        await AppDatabase.instance.registerUser(appUser);
                    if (result) {
                      //Code to Naviagte for Success page
                    } else {
                      //Raise an alert or Toast message
                    }
                  },
                  child: const Text('Register'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
