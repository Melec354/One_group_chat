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
    apiKey: 'AIzaSyDQHlAI9Wtj5OKq67Sw5vfOwRgAJyurxhk',
    appId: '1:413160178947:web:ba4a78aec4246ed428d536',
    messagingSenderId: '413160178947',
    projectId: 'flutter-chat-3f990',
    authDomain: 'flutter-chat-3f990.firebaseapp.com',
    storageBucket: 'flutter-chat-3f990.appspot.com',
    measurementId: 'G-1EFRRS0503',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCirg-sIxykOsxFDMNsk_oKKdZeSMs7p3w',
    appId: '1:413160178947:android:a61447df699fd73928d536',
    messagingSenderId: '413160178947',
    projectId: 'flutter-chat-3f990',
    storageBucket: 'flutter-chat-3f990.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBw9NiXaCKM3aYzrIAwoKfeeMoBuYonPog',
    appId: '1:413160178947:ios:e9d629059cd20b9b28d536',
    messagingSenderId: '413160178947',
    projectId: 'flutter-chat-3f990',
    storageBucket: 'flutter-chat-3f990.appspot.com',
    iosClientId: '413160178947-gg34b4mbpa3h7kv7p06ica234krl58st.apps.googleusercontent.com',
    iosBundleId: 'com.aimac.flutter-chat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBw9NiXaCKM3aYzrIAwoKfeeMoBuYonPog',
    appId: '1:413160178947:ios:e8e2a8fa764a77d928d536',
    messagingSenderId: '413160178947',
    projectId: 'flutter-chat-3f990',
    storageBucket: 'flutter-chat-3f990.appspot.com',
    iosClientId: '413160178947-3skpnbnvm3fuv45b1ln6mc4jh0gfahup.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterChat',
  );
}
