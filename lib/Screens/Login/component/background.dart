import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: -200,
              left: -200,
              child: Image.asset(
                "assets/icons/lingkaran.png",
                width: size.width * 0.9,
              )),
          Positioned(
              bottom: -90,
              right: -170,
              child: Image.asset(
                "assets/icons/awan.png",
                width: size.width * 1,
              )),
          child
        ],
      ),
    );
  }
}
