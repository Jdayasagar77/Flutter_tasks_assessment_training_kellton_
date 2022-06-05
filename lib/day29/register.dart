import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:kellton_flutter_training/day29/controllercart.dart';

class RegisterUserForm extends StatefulWidget {
  const RegisterUserForm({Key? key}) : super(key: key);
  @override
  State<RegisterUserForm> createState() => _RegisterUserFormState();
}

class _RegisterUserFormState extends State<RegisterUserForm> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  AuthenticationServiceController controller =
      Get.put(AuthenticationServiceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
// backgroundColor: Colors.transparent,
// elevation: 0,
        title: const Text('Create User'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration:
                        const InputDecoration(labelText: 'Enter Email Id'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter email Id';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration:
                        const InputDecoration(labelText: 'Enter Password'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Password';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: (() async {
                      if (_formKey.currentState!.validate()) {
                        dynamic v = await controller.registerUser(
                            emailController.text, passwordController.text);
                        if (v == 'true') {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  backgroundColor: Colors.redAccent,
                                  content:
                                      Text('User Registered Successfully')));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.redAccent,
                              content: Text('$v')));
                        }
                      }
                    }),
                    child: const Text('Save'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
