import 'package:flutter/material.dart';
import 'package:websites/appbar/appbar_button.dart';
import 'package:websites/appbar/appbar_logo.dart';

class AppbarSelect2 extends StatelessWidget implements PreferredSizeWidget {
  const AppbarSelect2({Key? key}) : super(key: key);

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
            textColor: Colors.black,
          )),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 224, 220, 220),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
