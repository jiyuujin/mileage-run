import 'package:base_widgets/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mileage_run/pages/top_page.dart';

class SigninGoogle extends StatelessWidget {
  const SigninGoogle({Key? key}) : super(key: key);

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SignIn')),
      body: Center(
        child: CustomButton(
          backgroundColor: Colors.blue,
          title: 'Google',
          onPressed: () async {
            signInWithGoogle();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TopPage()),
            );
          },
        ),
      ),
    );
  }
}