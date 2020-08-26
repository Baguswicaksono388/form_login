import 'package:flutter/material.dart';
import 'package:form_login/auth_services.dart';
import 'package:form_login/constrant.dart';
import 'package:form_login/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserSream, //ini akan kita pantau
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
        home: Wrapper(),
      ),
    );
  }
}
