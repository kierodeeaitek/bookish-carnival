import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD4uix8BQQxlR5iMyHwP5MkDzyFX692NRs",
            authDomain: "clothery-complete-fashi-vmgqjf.firebaseapp.com",
            projectId: "clothery-complete-fashi-vmgqjf",
            storageBucket: "clothery-complete-fashi-vmgqjf.firebasestorage.app",
            messagingSenderId: "124753961195",
            appId: "1:124753961195:web:d9fa9a2b0ce83ef188deae"));
  } else {
    await Firebase.initializeApp();
  }
}
