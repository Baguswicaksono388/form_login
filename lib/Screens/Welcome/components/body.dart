import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_login/Screens/Login/login_screen.dart';
import 'package:form_login/auth_services.dart';
import 'package:form_login/component/rounded_button.dart';
import 'package:form_login/constrant.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(50),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "WELCOME DOCTOR",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/images/profesor.svg",
            height: size.height * 0.4,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
            text: "Sign In Anonymous",
            press: () async {
              await AuthServices.signInAnonymous();
            },
          ),
          RoundedButton(
            text: "Login",
            color: kPrimaryLightColor,
            textColor: Colors.black,
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
    ));
  }
}
