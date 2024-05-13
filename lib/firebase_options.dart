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
    apiKey: 'AIzaSyCqBP7xq7xzyKBeU7umS0ZClDu1txcEam8',
    appId: '1:802090119053:web:101e3a70e79cc7b49697c4',
    messagingSenderId: '802090119053',
    projectId: 'mainproject-dacc2',
    authDomain: 'mainproject-dacc2.firebaseapp.com',
    storageBucket: 'mainproject-dacc2.appspot.com',
    measurementId: 'G-36Q4M9927G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDf3_KvvHLhc1WAmge38AUwl0fU4OeT9_U',
    appId: '1:802090119053:android:2cb52d9bafcbec6c9697c4',
    messagingSenderId: '802090119053',
    projectId: 'mainproject-dacc2',
    storageBucket: 'mainproject-dacc2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9QWjiDea7-5opnhvFzoQB_oJm0jbgy7Y',
    appId: '1:802090119053:ios:7b4156a145e17bdf9697c4',
    messagingSenderId: '802090119053',
    projectId: 'mainproject-dacc2',
    storageBucket: 'mainproject-dacc2.appspot.com',
    iosBundleId: 'com.example.ebookAppMainproject',
  );
}
