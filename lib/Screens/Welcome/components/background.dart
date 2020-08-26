import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //Ini ukuran dari total tinggi & lebar dari screens kita
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -200,
              left: -200,
              child: Image.asset(
                "assets/icons/lingkaran1.png",
                width: size.width * 1,
              )),
          Positioned(
              bottom: -180,
              left: -180,
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
