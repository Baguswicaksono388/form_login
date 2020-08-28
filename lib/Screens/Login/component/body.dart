import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_login/Screens/Signup/signup_screen.dart';
import 'package:form_login/auth_services.dart';
import 'package:form_login/component/already_have_an_account_check.dart';
import 'package:form_login/component/rounded_button.dart';
import 'package:form_login/component/rounded_input_field.dart';
import 'package:form_login/component/rounded_input_password.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController =
        TextEditingController(text: "");
    TextEditingController passwordController = TextEditingController(text: "");
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          //child disini adalah value yang dibuat pada Class Bacground
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/images/medical.svg",
              width: size.width * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Your Email",
              controller: emailController,
              onChanged: (value) {},
            ),
            RoundedInputPassword(
              controller: passwordController,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () async {
                AuthServices.signIn(
                    emailController.text, passwordController.text);
              },
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
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
