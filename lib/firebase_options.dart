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
    apiKey: 'AIzaSyAJ2aSOQXjzsWsn7v6XhijHmmjTA2mV5BQ',
    appId: '1:926336659943:web:a2061b28520f4fa254cd42',
    messagingSenderId: '926336659943',
    projectId: 'variable-firebase-746',
    authDomain: 'variable-firebase-746.firebaseapp.com',
    storageBucket: 'variable-firebase-746.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAeI5-cmcS-q780qXhoVaEJ1Md4M2JOHNU',
    appId: '1:926336659943:android:f627e8a6d3a4a01354cd42',
    messagingSenderId: '926336659943',
    projectId: 'variable-firebase-746',
    storageBucket: 'variable-firebase-746.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAvP9-bpbSuQvUveT-Xo5lYu1qlwBvV8x8',
    appId: '1:926336659943:ios:e2cb31a49afebd9a54cd42',
    messagingSenderId: '926336659943',
    projectId: 'variable-firebase-746',
    storageBucket: 'variable-firebase-746.appspot.com',
    iosBundleId: 'com.example.movieBookingApp1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAvP9-bpbSuQvUveT-Xo5lYu1qlwBvV8x8',
    appId: '1:926336659943:ios:e44172ef0da2d4f254cd42',
    messagingSenderId: '926336659943',
    projectId: 'variable-firebase-746',
    storageBucket: 'variable-firebase-746.appspot.com',
    iosBundleId: 'com.example.movieBookingApp1.RunnerTests',
  );
}
