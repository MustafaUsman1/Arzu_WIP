import 'package:flutter/material.dart';
import 'package:main/auth/verify_code.dart';
import 'package:main/widgets/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginWithNumber extends StatefulWidget {
  const LoginWithNumber({super.key});

  @override
  State<LoginWithNumber> createState() => _LoginWithNumberState();
}

class _LoginWithNumberState extends State<LoginWithNumber> {
  bool _isloading = false;

  final phoneNumerController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login With Number'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextFormField(
              controller: phoneNumerController,
              decoration: const InputDecoration(
                hintText: '+92 000 0000000',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(height: 20),
            RoundButton(
                data: 'login',
                ontap: () {
                  auth.verifyPhoneNumber(
                    phoneNumber: phoneNumerController.text,
                    verificationCompleted: (_) {},
                    verificationFailed: (e) {
                      // Utils().toastMessage(e.toString());
                    },
                    codeSent: (String verificationId, int? token) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyCodeScreen(
                                    verificationId: verificationId,
                                  )));
                    },
                    codeAutoRetrievalTimeout: (e) {
                      // Utils().toastMessage(e.toString());
                    },
                  );
                })
          ],
        ),
      ),
    );
  }
}
