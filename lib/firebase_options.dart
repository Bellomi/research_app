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
    apiKey: 'AIzaSyB_eTL3Q8i-8Zf4HIPgao3jde2OMZkk0bw',
    appId: '1:50495206313:web:9b179897c486448a4a8ab8',
    messagingSenderId: '50495206313',
    projectId: 'cerotocone-131e3',
    authDomain: 'cerotocone-131e3.firebaseapp.com',
    storageBucket: 'cerotocone-131e3.appspot.com',
    measurementId: 'G-7QBEYBS8Y4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfPLuQN2tYbjghyWLG-vGV0Sh160qBgLo',
    appId: '1:50495206313:android:24be549deffca6674a8ab8',
    messagingSenderId: '50495206313',
    projectId: 'cerotocone-131e3',
    storageBucket: 'cerotocone-131e3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAD0srggtK_u6EU5gfXvKpdmzhp8Px9Yqo',
    appId: '1:50495206313:ios:3518885a5329eca84a8ab8',
    messagingSenderId: '50495206313',
    projectId: 'cerotocone-131e3',
    storageBucket: 'cerotocone-131e3.appspot.com',
    iosClientId: '50495206313-0pq24v19evq1ufihj20nfakbfbg6rcc7.apps.googleusercontent.com',
    iosBundleId: 'com.example.ceratoconeApp1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAD0srggtK_u6EU5gfXvKpdmzhp8Px9Yqo',
    appId: '1:50495206313:ios:750389074ea5daa94a8ab8',
    messagingSenderId: '50495206313',
    projectId: 'cerotocone-131e3',
    storageBucket: 'cerotocone-131e3.appspot.com',
    iosClientId: '50495206313-briv92f4ibs7ehrorm2lo8i333a6p8e8.apps.googleusercontent.com',
    iosBundleId: 'com.example.ceratoconeApp1.RunnerTests',
  );
}
