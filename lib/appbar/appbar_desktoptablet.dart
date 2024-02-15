import 'package:flutter/material.dart';
import 'package:websites/appbar/appbar_button.dart';
import 'package:websites/appbar/appbar_logo.dart';

class AppbarDesktoptablet extends StatelessWidget {
  const AppbarDesktoptablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppbarLogo(),
          SizedBox(width: 70),
          Container(
              child: AppbarButton(
            textColor: Colors.white,
          )),
        ],
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.grey.shade900,
              Colors.grey.shade800,
              const Color.fromARGB(255, 145, 144, 144),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        // background:
        //     Image.asset('images/image12.png', fit: BoxFit.cover),
      ),
    );
  }
}
