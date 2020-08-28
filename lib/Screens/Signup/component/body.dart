import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_login/Screens/Login/login_screen.dart';
import 'package:form_login/auth_services.dart';
import 'package:form_login/component/already_have_an_account_check.dart';
import 'package:form_login/component/rounded_button.dart';
import 'package:form_login/component/rounded_input_field.dart';
import 'package:form_login/component/rounded_input_password.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController =
        TextEditingController(text: "");
    final TextEditingController passwordController =
        TextEditingController(text: "");
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              "assets/images/pasien.svg",
              height: size.height * 0.3,
            ),
            RoundedInputField(
              controller: emailController,
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedInputPassword(
              controller: passwordController,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () async {
                await AuthServices.signUp(
                    emailController.text, passwordController.text);
              },
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
