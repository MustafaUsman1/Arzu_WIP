import 'dart:async';
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/auth/login_screen.dart';

class SplashServices {
  // static Future<void> init() async {
  //   await Firebase.initializeApp();
  //   await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  //   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  // }

  void isLogin(BuildContext context) {
    // if (FirebaseAuth.instance.currentUser != null) {
    //   Get.offAllNamed(Routes.HOME);
    // } else {
    //   Get.offAllNamed(Routes.LOGIN);
    // }
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    });

  }
}
