import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:food_app2/auth/sign_in.dart';
// import 'package:food_app2/auth/sign_in.dart';
// import 'package:food_app2/auth/sign_in.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:food_app2/screens/home/home_screen.dart';
// ignore: unused_import
import 'package:food_app2/screens/my_profile/my_profile.dart';
// ignore: unused_import
import 'package:food_app2/screens/product_overview/product_overview.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// final GoogleSignIn _googleSignIn = GoogleSignIn(
//   clientId: 'YOUR_CLIENT_ID.apps.googleusercontent.com',
// );

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: FirebaseOptions(
//       apiKey: "AIzaSyA_9KOa_23_wngDgDScVMwih0q3QXisA04",
//       appId: "1:258777707761:android:0337def7c9b6e2e212e550",
//       messagingSenderId: "258777707761",
//       projectId: "1:258777707761:android:0337def7c9b6e2e212e550",
//     ),
//   );
//   runApp(const MyApp());
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfile(),
    );
  }
}
