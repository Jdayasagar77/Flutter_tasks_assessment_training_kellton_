import 'package:flutter/material.dart';
// import 'package:flutter_demos/models/user_info.dart';

// ignore: unused_import
import '../models/user_info.dart';

class UserDetailsScreen extends StatelessWidget {
  // const UserDetailsScreen({Key? key}) : super(key: key);
  static const String routeName = '/UserDetails';
  final String uname, passwd, email, mobile;
  // ignore: use_key_in_widget_constructors
  const UserDetailsScreen(this.uname, this.passwd, this.email, this.mobile);
  @override
  Widget build(BuildContext context) {
    // final UserInfo uinfo =
    //     ModalRoute.of(context)!.settings.arguments as UserInfo;
    return Scaffold(
      appBar: AppBar(
        title: Text('$uname details'),
      ),
      body: SizedBox(
        width: 200,
        height: 200,
        child: Card(
          elevation: 20,
          color: Colors.purple,
          child: Column(
            children: [
              Row(
                children: [
                  const Text('User name : '),
                  const SizedBox(
                    width: 10.0,
                  ),
                  // Text(uinfo.userName),
                  Text(uname),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  const Text('Password : '),
                  const SizedBox(
                    width: 10.0,
                  ),
                  // Text(uinfo.password),
                  Text(passwd),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  const Text('Email Id : '),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(email),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  const Text('Mobile # : '),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(mobile),
                ],
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
