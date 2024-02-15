import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:websites/home/home_desktop.dart';
import 'package:websites/home/home_mobile.dart';
import 'package:websites/home/home_tablet.dart';

class HomeNew extends StatelessWidget {
  const HomeNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(),
      tablet: HomeTablet(),
      desktop: HomeDesktop(),
    );
  }
}
