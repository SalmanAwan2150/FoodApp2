import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app2/screens/home/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      print("signed in " + user!.displayName!);
      // userProvider.addUserData(
      //   currentUser: user,
      //   userEmail: user.email,
      //   userImage: user.photoURL,
      //   userName: user.displayName,
      // );

      return user;
    } catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage('assets/background.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Sign in to continue'),
                  Text(
                    'Vegi',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.green,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                  ),

                  // with custom text button
                  Column(
                    children: [
                      Padding(padding: const EdgeInsets.symmetric(vertical: 8)),
                      SignInButton(
                        Buttons.apple,
                        text: "Sign in with Apple",
                        onPressed: () {},
                      ),
                      Padding(padding: const EdgeInsets.symmetric(vertical: 8)),
                      SignInButton(
                        Buttons.google,
                        text: "Sign in with Google",
                        onPressed: () {
                          _googleSignUp().then((value) => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => HomeScreen())));
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'By signing in you are agreeing our',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(
                        'Terms and privacy policy',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
