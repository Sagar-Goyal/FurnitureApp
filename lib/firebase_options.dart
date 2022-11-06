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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBBfsfv5A_VMqXfCLlrmbKEAMPLbNhscug',
    appId: '1:6072653819:web:2d9ce19cda3224199c5d5e',
    messagingSenderId: '6072653819',
    projectId: 'product-fe71b',
    authDomain: 'product-fe71b.firebaseapp.com',
    storageBucket: 'product-fe71b.appspot.com',
    measurementId: 'G-M7BE2ZMK8G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgEKZg-wGxfThUEZ0Fts5AkkpnJGwfdyk',
    appId: '1:6072653819:android:ce628ce2d7f493e79c5d5e',
    messagingSenderId: '6072653819',
    projectId: 'product-fe71b',
    storageBucket: 'product-fe71b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQOHHesev_2SQpF7WBWJqUMfvLeksv5yI',
    appId: '1:6072653819:ios:660370abbdc4fdd89c5d5e',
    messagingSenderId: '6072653819',
    projectId: 'product-fe71b',
    storageBucket: 'product-fe71b.appspot.com',
    iosClientId: '6072653819-orn0d8ufmra1to2e2r88dfb19q5kgnbf.apps.googleusercontent.com',
    iosBundleId: 'com.example.karostartupProject',
  );
}
