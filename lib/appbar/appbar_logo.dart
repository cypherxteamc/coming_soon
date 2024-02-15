import 'package:flutter/material.dart';

class AppbarLogo extends StatelessWidget {
  const AppbarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: Image.asset('images/logo.png'),
    );
  }
}
