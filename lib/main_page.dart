import 'dart:math';

import 'package:flutter/material.dart';
import 'package:websites/aboutUs/aboutus.dart';
import 'package:websites/animated_container1.dart';
import 'package:websites/appbar/appbar_new.dart';
import 'package:websites/appbar/appbar_select1.dart';
import 'package:websites/appbar/appbar_select2.dart';
import 'package:websites/appbar/appbar_button.dart';
import 'package:websites/buttons/container_button2.dart';
import 'package:websites/buttons/square_button.dart';
import 'package:websites/centered_view.dart';
import 'package:websites/checkbox_cont.dart';
import 'package:websites/buttons/container_button.dart';
import 'package:websites/content_container/content_container.dart';
import 'package:websites/content_container/contentbox_11.dart';
import 'package:websites/content_container/contentbox_12.dart';
import 'package:websites/content_container/contentbox_13.dart';
import 'package:websites/contentbox/content_box1.dart';
import 'package:websites/contentbox/content_box2.dart';
import 'package:websites/contentbox/content_box3.dart';
import 'package:websites/buttons/outlined_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/painting.dart';
import 'package:websites/contentbox/content_box4.dart';
import 'package:websites/contentbox/mini_contentbox3.dart';
import 'package:websites/contentbox/mini_contentbox4.dart';
import 'package:websites/contentbox/mini_contentbox5.dart';
import 'package:websites/contentbox/mini_contentbox6.dart';
import 'package:websites/contentbox/mini_contentbox7.dart';
import 'package:websites/contentbox/questions/expantion_tile.dart';
import 'package:websites/contentbox/team_members.dart';
import 'package:websites/contentbox/token_box.dart';
import 'package:websites/footer/footer_box1.dart';
import 'package:websites/footer/footer_box2.dart';
import 'package:websites/footer/footer_box3.dart';
import 'package:websites/footer/footer_box4.dart';
import 'package:websites/home/home_desktop.dart';
import 'package:websites/home/home_mobile.dart';
import 'package:websites/home/home_new.dart';
import 'package:websites/home/home_tablet.dart';
import 'package:websites/subscribe/subscribe.dart';
import 'package:websites/subscribe/subscribe_button.dart';
import 'package:websites/subscribe/subscribe_content.dart';
import 'package:websites/subscribe/subscribe_email.dart';
import 'package:websites/token/circle_ring.dart';
import 'package:websites/countdown/timer_basic.dart';
import 'package:websites/countdown/timer_frame.dart';
import 'package:websites/icons/icon_model.dart';
import 'package:websites/token/token_container.dart';
import 'package:websites/tree_content/circle.dart';
import 'package:websites/text_shadermask.dart';
import 'package:websites/tree_content/timeline_1.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

import 'package:websites/tree_content/tree_content1.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppbarTransparent extends StatefulWidget {
  const AppbarTransparent({Key? key}) : super(key: key);

  @override
  _AppbarTransparentState createState() => _AppbarTransparentState();
}

class _AppbarTransparentState extends State<AppbarTransparent> {
  ScrollController _scrollController = ScrollController();

  double _pixels = 0;

  _scrollListener() {
    setState(() {
      _pixels = _scrollController.position.pixels;
    });
  }

  @override
  void initstate() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void initState() {
    _scrollController.addListener(() {
      setState(() {
        _pixels = _scrollController.position.pixels;
        print(_scrollController.position.pixels);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: _pixels == 0 ? AppbarNew() : AppbarNew(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ScreenTypeLayout(
              mobile: HomeMobile(),
              tablet: HomeTablet(),
              desktop: HomeDesktop(),
            ),
          ),
        ],
      ),
    );
  }
}
