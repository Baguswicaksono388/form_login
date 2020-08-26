import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_login/Screens/Login/login_screen.dart';
import 'package:form_login/Screens/Welcome/welcome_screen.dart';
import 'package:form_login/main_page.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  Widget build(BuildContext context) {
    //sebelum login kita akan mengambil firebaseUser
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    return (firebaseUser == null)
        ? WelcomeScreen()
        : MainPage(firebaseUser); //ini adlh if else
  }
}
