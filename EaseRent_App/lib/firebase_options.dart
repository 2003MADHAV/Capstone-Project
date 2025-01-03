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
    apiKey: 'AIzaSyAZEEf8DYtyMjS2sRcJuPxb2X291a2xy_4',
    appId: '1:1018291744415:web:fb9a4635859e0b3ab83caa',
    messagingSenderId: '1018291744415',
    projectId: 'erent-d16b7',
    authDomain: 'erent-d16b7.firebaseapp.com',
    storageBucket: 'erent-d16b7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC1FjLX5yc2Ls2UBgAvckxk5Umc-btXz8w',
    appId: '1:1018291744415:android:7d942c964221474db83caa',
    messagingSenderId: '1018291744415',
    projectId: 'erent-d16b7',
    storageBucket: 'erent-d16b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA1Lqwb9tXH1NQOBpryAXsSSkRbUSGwalM',
    appId: '1:1018291744415:ios:ff8f57ad24422855b83caa',
    messagingSenderId: '1018291744415',
    projectId: 'erent-d16b7',
    storageBucket: 'erent-d16b7.appspot.com',
    iosBundleId: 'com.broker.vrs',
  );

}