// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBRkT-Ym4lT0TIwQ_xMwu9sYmtRdM6VTUE',
    appId: '1:443733002904:web:f5a8f8bc16046632385eed',
    messagingSenderId: '443733002904',
    projectId: 'property-managment-app',
    authDomain: 'property-managment-app.firebaseapp.com',
    storageBucket: 'property-managment-app.appspot.com',
    measurementId: 'G-8ZJMQDT9KD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBV4Ru3aSCVzVSc0g9DDGlxntnqzuXVXac',
    appId: '1:443733002904:android:9e355ff0b970aecb385eed',
    messagingSenderId: '443733002904',
    projectId: 'property-managment-app',
    storageBucket: 'property-managment-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAIJH7Ensssdf-lBswzhKTO9W5ywcghMKI',
    appId: '1:443733002904:ios:ca0bd723f189354e385eed',
    messagingSenderId: '443733002904',
    projectId: 'property-managment-app',
    storageBucket: 'property-managment-app.appspot.com',
    iosBundleId: 'com.example.propertymanagmentapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAIJH7Ensssdf-lBswzhKTO9W5ywcghMKI',
    appId: '1:443733002904:ios:ca0bd723f189354e385eed',
    messagingSenderId: '443733002904',
    projectId: 'property-managment-app',
    storageBucket: 'property-managment-app.appspot.com',
    iosBundleId: 'com.example.propertymanagmentapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBRkT-Ym4lT0TIwQ_xMwu9sYmtRdM6VTUE',
    appId: '1:443733002904:web:393fc6c5a2a86f85385eed',
    messagingSenderId: '443733002904',
    projectId: 'property-managment-app',
    authDomain: 'property-managment-app.firebaseapp.com',
    storageBucket: 'property-managment-app.appspot.com',
    measurementId: 'G-210GBVVEWQ',
  );
}