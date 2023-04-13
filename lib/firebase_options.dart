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
    apiKey: 'AIzaSyDNaxGb7kNJWeo547Kr2nb1-ih-_C9Mp4E',
    appId: '1:519751259698:web:38622092b6f0511cbe8e2b',
    messagingSenderId: '519751259698',
    projectId: 'moviedom-d13b7',
    authDomain: 'moviedom-d13b7.firebaseapp.com',
    storageBucket: 'moviedom-d13b7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9ShxUdpGkvdL6JftOuif6YPLNz4Pk8_E',
    appId: '1:519751259698:android:b04b615df995fee2be8e2b',
    messagingSenderId: '519751259698',
    projectId: 'moviedom-d13b7',
    storageBucket: 'moviedom-d13b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBK5vNVsrJZQ-lT2p5AS-l9O0Z5R9hSoAs',
    appId: '1:519751259698:ios:ab6434172220ca8cbe8e2b',
    messagingSenderId: '519751259698',
    projectId: 'moviedom-d13b7',
    storageBucket: 'moviedom-d13b7.appspot.com',
    iosClientId: '519751259698-spg2n12h75jrcu9ooosm587g27ptvf2b.apps.googleusercontent.com',
    iosBundleId: 'com.example.assignment',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBK5vNVsrJZQ-lT2p5AS-l9O0Z5R9hSoAs',
    appId: '1:519751259698:ios:ab6434172220ca8cbe8e2b',
    messagingSenderId: '519751259698',
    projectId: 'moviedom-d13b7',
    storageBucket: 'moviedom-d13b7.appspot.com',
    iosClientId: '519751259698-spg2n12h75jrcu9ooosm587g27ptvf2b.apps.googleusercontent.com',
    iosBundleId: 'com.example.assignment',
  );
}