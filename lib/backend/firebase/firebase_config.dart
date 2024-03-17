import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCVBALBRbpvD58-QsXZabKkQLhPs-yOrYw",
            authDomain: "mentorbridge-8f0e9.firebaseapp.com",
            projectId: "mentorbridge-8f0e9",
            storageBucket: "mentorbridge-8f0e9.appspot.com",
            messagingSenderId: "561194548673",
            appId: "1:561194548673:web:32d82cf4cc793e326dc340"));
  } else {
    await Firebase.initializeApp();
  }
}
