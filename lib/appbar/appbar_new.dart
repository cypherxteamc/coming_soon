import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:websites/appbar/appbar_desktoptablet.dart';
import 'package:websites/appbar/appbar_mobile.dart';

class AppbarNew extends StatelessWidget {
  const AppbarNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppbarMobile(),
      tablet: AppbarDesktoptablet(),
      desktop: AppbarDesktoptablet(),
    );
  }
}
