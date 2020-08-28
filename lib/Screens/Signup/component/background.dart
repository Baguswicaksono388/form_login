import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController =
        TextEditingController(text: "");
    TextEditingController passwordController = TextEditingController(text: "");
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: -180,
              left: -180,
              child: Image.asset(
                "assets/icons/lingkaran1.png",
                width: size.width * 1,
              )),
          Positioned(
              bottom: -260,
              left: -220,
              child: Image.asset(
                "assets/icons/lingkaran1.png",
                width: size.width * 1,
              )),
          child,
        ],
      ),
    );
  }
}
