import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:main/auth/sign_up.dart';
import 'package:main/auth/login_with_number.dart';
import 'package:main/widgets/round_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import firestore
import 'package:main/firestore_service.dart';

import 'package:main/curdoperations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'home.dart';

// This method queries the user details by email from Firestore

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _fromkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // function to check if email and password are valid
  Future<bool> _validateCredentials(String email, String password) async {
    try {
      // authenticate the user with their email and password
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // if authentication is successful, return true
      return true;
    } catch (e) {
      // if authentication fails, show an error message to the user and return false
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid email or password')),
      );
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _fromkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_fromkey.currentState!.validate()) {
                    // validate the entered email and password
                    final isValid = await _validateCredentials(
                        emailController.text, passwordController.text);

                    // if the credentials are valid, navigate to the home screen
                    if (isValid) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  HomeScreen())
                      );
                    }
                  }
                },
                child: const Text('Login'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginWithNumber()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black),
                  ),
                  child: const Center(
                    child: Text("Login with Phone"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
