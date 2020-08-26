import 'package:flutter/material.dart';
import 'package:form_login/auth_services.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              height: 100,
              child: TextField(
                controller: emailController,
              ), //TextField ini untuk menaruh email
            ),
            Container(
              width: 300,
              height: 100,
              child: TextField(
                controller: passwordController,
              ),
            ),
            RaisedButton(
                child: Text("Sign In Anonymous"),
                onPressed: () async {
                  await AuthServices.signInAnonymous();
                }),
            RaisedButton(
                child: Text("Sign In"),
                onPressed: () async {
                  await AuthServices.signIn(
                      emailController.text, passwordController.text);
                }),
            RaisedButton(
                child: Text("Sign Up"),
                onPressed: () async {
                  await AuthServices.signUp(
                      emailController.text, passwordController.text);
                }),
          ],
        ),
      ),
    );
  }
}
