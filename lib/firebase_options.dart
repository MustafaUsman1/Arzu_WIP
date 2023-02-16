// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyALnZHejkU8AnJvcIzuLPQw5e5Qvf_7qf4',
    appId: '1:140380216334:web:0125aab07ccd2e676b705f',
    messagingSenderId: '140380216334',
    projectId: 'dummy-arzu',
    authDomain: 'dummy-arzu.firebaseapp.com',
    storageBucket: 'dummy-arzu.appspot.com',
    measurementId: 'G-EQ68RNL4BJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDfKOJul0QRdfqlRaabBnbxr87M9AwxLLU',
    appId: '1:140380216334:android:520cb82f065c37c66b705f',
    messagingSenderId: '140380216334',
    projectId: 'dummy-arzu',
    storageBucket: 'dummy-arzu.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAszCwp72z4j2f6m0-lZHJ4ljCfYzkjpOA',
    appId: '1:140380216334:ios:5cdea60487b1234d6b705f',
    messagingSenderId: '140380216334',
    projectId: 'dummy-arzu',
    storageBucket: 'dummy-arzu.appspot.com',
    iosClientId: '140380216334-o64jff2dkad3168elpqts3238spkb1ki.apps.googleusercontent.com',
    iosBundleId: 'com.example.arzu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAszCwp72z4j2f6m0-lZHJ4ljCfYzkjpOA',
    appId: '1:140380216334:ios:5cdea60487b1234d6b705f',
    messagingSenderId: '140380216334',
    projectId: 'dummy-arzu',
    storageBucket: 'dummy-arzu.appspot.com',
    iosClientId: '140380216334-o64jff2dkad3168elpqts3238spkb1ki.apps.googleusercontent.com',
    iosBundleId: 'com.example.arzu',
  );
}
