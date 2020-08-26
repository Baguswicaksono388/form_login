import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../main_page.dart';
import 'component/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    return (firebaseUser == null)
        ? Scaffold(
            body: Body(),
          )
        : MainPage(firebaseUser); //ini adlh if else
    // return Scaffold(
    //   body: Body(),
    // );
  }
}
