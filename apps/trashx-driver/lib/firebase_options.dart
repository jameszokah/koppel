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
    apiKey: 'AIzaSyDHOSmwkLUhBWkcZkldFlHrPtmy694ccME',
    appId: '1:115722614823:web:fa6fc498b177641460f602',
    messagingSenderId: '115722614823',
    projectId: 'trashx-e438a',
    authDomain: 'trashx-e438a.firebaseapp.com',
    storageBucket: 'trashx-e438a.appspot.com',
    measurementId: 'G-ZE0EMSV6MX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2xclTs5EKmm_mSnKxbN84Pv2sP6gMrxc',
    appId: '1:115722614823:android:4abd72df8cd04d2660f602',
    messagingSenderId: '115722614823',
    projectId: 'trashx-e438a',
    storageBucket: 'trashx-e438a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_egHqya9ccr486uNJt6kS2uAibGvqmBg',
    appId: '1:115722614823:ios:543b963029212fb260f602',
    messagingSenderId: '115722614823',
    projectId: 'trashx-e438a',
    storageBucket: 'trashx-e438a.appspot.com',
    iosClientId: '115722614823-sac0ne7he8e545ihcvtk5665rgfav55a.apps.googleusercontent.com',
    iosBundleId: 'com.koppel.trashx.trashxDriver',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_egHqya9ccr486uNJt6kS2uAibGvqmBg',
    appId: '1:115722614823:ios:5d14b6ab8e5c1e0d60f602',
    messagingSenderId: '115722614823',
    projectId: 'trashx-e438a',
    storageBucket: 'trashx-e438a.appspot.com',
    iosClientId: '115722614823-frha9v8knkc1vtbolc0pncmlpgdct9fr.apps.googleusercontent.com',
    iosBundleId: 'com.koppel.trashx.trashxDriver.RunnerTests',
  );
}