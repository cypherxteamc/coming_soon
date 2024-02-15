import 'package:flutter/material.dart';
import 'package:websites/appbar/appbar_logo.dart';

class AppbarMobile extends StatelessWidget {
  const AppbarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          AppbarLogo(),
        ],
      ),
    );
  }
}
