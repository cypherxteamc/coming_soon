import 'package:flutter/material.dart';
import 'package:websites/aboutUs/aboutus.dart';
import 'package:websites/animated_container1.dart';
import 'package:websites/appbar/appbar_new.dart';
import 'package:websites/appbar/appbar_select1.dart';
import 'package:websites/appbar/appbar_select2.dart';
import 'package:websites/appbar/appbar_button.dart';
import 'package:websites/buttons/container_button2.dart';
import 'package:websites/buttons/square_button.dart';
import 'package:websites/checkbox_cont.dart';
import 'package:websites/buttons/container_button.dart';
import 'package:websites/content_container/content_container.dart';
import 'package:websites/content_container/contentbox_11.dart';
import 'package:websites/content_container/contentbox_12.dart';
import 'package:websites/content_container/contentbox_13.dart';
import 'package:websites/contentbox/content_box.dart';
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

class HomeTablet extends StatefulWidget {
  const HomeTablet({Key? key}) : super(key: key);

  @override
  _HomeTabletState createState() => _HomeTabletState();
}

class _HomeTabletState extends State<HomeTablet> {
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

    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: _height * 0.8,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 108, 107, 107),
                  Colors.grey.shade800,
                  Colors.grey.shade900,
                  Colors.black,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              // image: DecorationImage(
              //   image: AssetImage('images/image11.png'),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: Row(
              children: [
                Container(
                  height: 500,
                  padding: EdgeInsets.only(top: 200, left: 200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContentBox(),
                      Container(
                        child: Row(
                          children: [
                            CustomOutlinedButton(
                              Text: 'WHITEPAPER',
                            ),
                            SizedBox(width: 20),
                            CustomOutlinedButton(
                              Text: 'BUY TOKEN',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 200),
                Container(
                  height: 500,
                  width: 600,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/image24.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            //child: Image.asset('images/image11.png', fit: BoxFit.cover),
          ),
          Container(
            height: 1000,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: _pixels > 100 ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Container(
                    height: 300,
                    width: 800,
                    //color: Color.fromARGB(255, 197, 197, 213),
                    child: AnimatedPadding(
                      duration: Duration(milliseconds: 500),
                      padding: EdgeInsets.only(
                        top: _pixels > 100 ? 0 : 100,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            TextShadermask(
                              Text: 'Our Trading Platform',
                            ),
                            Container(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Our Trading Platform\n',
                                      style: TextStyle(
                                        fontFamily: 'Poppins ,sans-serif',
                                        height: 1.5,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Our ICO Template Will Be A Perfect Platform For Presenting Your Ico Launch.\n',
                                      style: TextStyle(
                                        fontFamily: 'Poppins ,sans-serif',
                                        height: 3,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'This Landing Page Comes In Great And Clean Design\n',
                                      style: TextStyle(
                                        fontFamily: 'Poppins ,sans-serif',
                                        height: 1.5,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 600,
                      width: 600,
                      child: AnimatedContainer1(),
                    ),
                    SizedBox(width: 50),
                    Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/image17.png'),
                          fit: BoxFit.cover,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 108, 107, 107),
                            Colors.grey.shade800,
                            Colors.grey.shade900,
                            const Color.fromARGB(255, 35, 35, 35),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Poppins ,sans-serif',
                                  color: Colors.grey.shade900,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Powerful platform.\n',
                                    style: TextStyle(
                                      height: 2.5,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 35,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'We are dedicated to providing professional service\n ',
                                    style: TextStyle(
                                      height: 1.8,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'with the highest degree of honesty and integrity.\n',
                                    style: TextStyle(
                                      height: 1.5,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Column(
                                children: [
                                  CheckboxCont(
                                    Text: 'Competent Professionals',
                                  ),
                                  SizedBox(height: 15),
                                  CheckboxCont(
                                    Text: 'Affordable Prices',
                                  ),
                                  SizedBox(height: 15),
                                  CheckboxCont(
                                    Text: 'High Successful Recovery',
                                  ),
                                  SizedBox(height: 15),
                                  CheckboxCont(
                                    Text: 'Creative Layout',
                                  ),
                                  SizedBox(height: 35),
                                ],
                              ),
                            ),
                            CustomOutlinedButton(
                              Text: 'WHITEPAPER',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: 1300,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedAlign(
                          duration: Duration(milliseconds: 500),
                          alignment: _pixels > 1000
                              ? Alignment.center
                              : Alignment.topCenter,
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 500),
                            opacity: _pixels > 1000 ? 1.0 : 0.0,
                            child: Container(
                              padding: EdgeInsets.only(top: 60),
                              height: 600,
                              width: 700,
                              child: AnimatedPadding(
                                duration: Duration(milliseconds: 500),
                                padding: EdgeInsets.only(
                                  top: _pixels > 1000 ? 0 : 100,
                                ),
                                child: ContentBox1(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 50),
                        Container(
                          height: 500,
                          width: 500,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/image19.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 800,
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color.fromARGB(255, 108, 107, 107),
                        Colors.grey.shade800,
                        Colors.grey.shade900,
                      ],
                      tileMode: TileMode.clamp,
                      radius: 2,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 650,
                left: 230,
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width / 2 * 1.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 20, 20, 20),
                        Colors.grey.shade900,
                        const Color.fromARGB(255, 26, 26, 26),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('images/image18.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      Container(
                        height: 300,
                        width: 600,
                        child: ContentBox2(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 3.8,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: _pixels > 2200 ? 1.0 : 0.0,
                    child: Column(
                      children: [
                        AnimatedPadding(
                          duration: Duration(milliseconds: 500),
                          padding: EdgeInsets.only(
                            top: _pixels > 2200 ? 0 : 100,
                          ),
                          child: AnimatedAlign(
                            duration: Duration(milliseconds: 500),
                            alignment: _pixels > 2100
                                ? Alignment.center
                                : Alignment.topCenter,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 30),
                                TextShadermask(
                                  Text: 'Token Features',
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontFamily: 'Poppins ,sans-serif',
                                      height: 2,
                                      color: Colors.white,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Why Choose Us',
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AnimatedPadding(
                                  duration: Duration(milliseconds: 1000),
                                  padding: EdgeInsets.only(
                                    top: _pixels > 2000 ? 0 : 200,
                                  ),
                                  child: AnimatedAlign(
                                    duration: Duration(milliseconds: 3000),
                                    alignment: _pixels > 2000
                                        ? Alignment.center
                                        : Alignment.topCenter,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Poppins ,sans-serif',
                                          height: 1.5,
                                          color: Colors.white,
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                'Our ICO Template Will Be A Perfect Platform For Presenting Your Ico Launch.\n',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'This Landing Page Comes In Great And Clean Design\n',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContainerButton(
                          Icon: Icons.lock,
                          Title: 'Delivery Reports\n',
                          Text1: 'Lorem ipsum dolor sit amet, \n',
                          Text2: 'consectetur adipisicing elit.',
                        ),
                        SizedBox(width: 50),
                        ContainerButton(
                          Icon: Icons.group,
                          Title: 'Marketing Campaigns\n',
                          Text1: 'Lorem ipsum dolor sit amet, \n',
                          Text2: 'consectetur adipisicing elit.',
                        ),
                        SizedBox(width: 50),
                        ContainerButton(
                          Icon: Icons.account_box,
                          Title: 'Tracking API\n',
                          Text1: 'Lorem ipsum dolor sit amet, \n',
                          Text2: 'consectetur adipisicing elit.',
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContainerButton(
                          Icon: Icons.key,
                          Title: 'Branded Sender ID\n',
                          Text1: 'Lorem ipsum dolor sit amet, \n',
                          Text2: 'consectetur adipisicing elit.',
                        ),
                        SizedBox(width: 50),
                        ContainerButton(
                          Icon: Icons.shield,
                          Title: 'Professional Routing\n',
                          Text1: 'Lorem ipsum dolor sit amet, \n',
                          Text2: 'consectetur adipisicing elit.',
                        ),
                        SizedBox(width: 50),
                        ContainerButton(
                          Icon: Icons.message,
                          Title: 'Two-Way Messaging\n',
                          Text1: 'Lorem ipsum dolor sit amet, \n',
                          Text2: 'consectetur adipisicing elit.',
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 150),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContentBox3(),
                      SizedBox(width: 50),
                      Column(
                        children: [
                          ContainerButton2(
                            child: IconModel(
                              boxDecoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 240, 190, 40),
                                    Color.fromARGB(255, 240, 143, 40),
                                    Color.fromARGB(255, 240, 93, 40),
                                    Color.fromARGB(255, 240, 60, 40),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              icon: Icons.access_time_rounded,
                            ),
                            Title: 'Delivery Reports\n',
                            Text:
                                'Lorem ipsum dolor sit amet, conse ctetur dolor adipisicing elit.',
                          ),
                          SizedBox(height: 18),
                          ContainerButton2(
                            child: IconModel(
                              boxDecoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 75, 10, 35),
                                    Color.fromARGB(255, 144, 23, 69),
                                    Color.fromARGB(255, 240, 93, 40),
                                    Color.fromARGB(255, 236, 97, 81),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              icon: Icons.wysiwyg_rounded,
                            ),
                            Title: 'Advanced Application Interface (API)\n',
                            Text:
                                'Lorem ipsum dolor sit amet, conse ctetur dolor adipisicing elit.',
                          ),
                          SizedBox(height: 18),
                          ContainerButton2(
                            child: IconModel(
                              boxDecoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 104, 244, 165),
                                    const Color.fromARGB(255, 75, 138, 246),
                                    Color.fromARGB(255, 75, 124, 246),
                                    Color.fromARGB(255, 61, 47, 95),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              icon: Icons.layers_rounded,
                            ),
                            Title: 'Software Development Kit (SDK)\n',
                            Text:
                                'Lorem ipsum dolor sit amet, conse ctetur dolor adipisicing elit.',
                          ),
                          SizedBox(height: 18),
                          ContainerButton2(
                            child: IconModel(
                              boxDecoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 149, 223, 100),
                                    Color.fromARGB(255, 94, 211, 102),
                                    Color.fromARGB(255, 42, 124, 42),
                                    Color.fromARGB(255, 27, 97, 76),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              icon: Icons.javascript,
                            ),
                            Title: 'Java Virtual Machine (JVM)\n',
                            Text:
                                'Lorem ipsum dolor sit amet, conse ctetur dolor adipisicing elit.',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 500,
                        width: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/image20.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 100),
                      ContentBox4(),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AnimatedOpacity(
                            opacity: _pixels > 4100 ? 1.0 : 0.0,
                            duration: Duration(milliseconds: 500),
                            child: Container(
                              height: 400,

                              //color: Color.fromARGB(255, 197, 197, 213),
                              child: AnimatedPadding(
                                duration: Duration(milliseconds: 500),
                                padding: EdgeInsets.only(
                                  top: _pixels > 4100 ? 0 : 100,
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      MiniContentbox3(),
                                      AnimatedOpacity(
                                        opacity: _pixels > 4100 ? 1.0 : 0.0,
                                        duration: Duration(milliseconds: 1500),
                                        child: AnimatedPadding(
                                          duration:
                                              Duration(milliseconds: 1500),
                                          padding: EdgeInsets.only(
                                            top: _pixels > 4100 ? 0 : 50,
                                          ),
                                          child: AnimatedAlign(
                                            duration:
                                                Duration(milliseconds: 1500),
                                            alignment: _pixels > 4100
                                                ? Alignment.center
                                                : Alignment.topCenter,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Funds Allocation',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 40,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                SizedBox(width: 300),
                                                Text(
                                                  'Token Distribution',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 40,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 400,
                        width: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/image21.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 100),
                      Container(
                        height: 400,
                        width: 700,
                        child: Row(
                          children: [
                            Container(
                              height: 500,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/image22.png'),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBox(width: 30),
                            Container(
                              child: Column(
                                children: [
                                  TokenBox(
                                    Text1: '12',
                                    Text2: 'Overhead Token Distribution',
                                    color: Color.fromARGB(255, 47, 21, 67),
                                  ),
                                  SizedBox(height: 10),
                                  TokenBox(
                                    Text1: '23',
                                    Text2: 'Supporting Blockchain',
                                    color: Color.fromARGB(255, 186, 81, 85),
                                  ),
                                  SizedBox(height: 10),
                                  TokenBox(
                                    Text1: '08',
                                    Text2: 'Engineers and R&amp;D',
                                    color: Color.fromARGB(255, 81, 172, 186),
                                  ),
                                  SizedBox(height: 10),
                                  TokenBox(
                                    Text1: '07',
                                    Text2: 'Paltform Operations',
                                    color: Color.fromARGB(255, 141, 20, 104),
                                  ),
                                  SizedBox(height: 10),
                                  TokenBox(
                                    Text1: '05',
                                    Text2: 'Network Growth Marketing',
                                    color: Color.fromARGB(255, 20, 141, 28),
                                  ),
                                  SizedBox(height: 10),
                                  TokenBox(
                                    Text1: '08',
                                    Text2: 'Oracle Network Developers',
                                    color: Color.fromARGB(255, 208, 177, 25),
                                  ),
                                  SizedBox(height: 10),
                                  TokenBox(
                                    Text1: '05',
                                    Text2: 'Engineers and R&amp;D',
                                    color: Color.fromARGB(255, 200, 90, 5),
                                  ),
                                  SizedBox(height: 10),
                                  TokenBox(
                                    Text1: '27',
                                    Text2: 'Paltform Operations',
                                    color: Color.fromARGB(255, 37, 123, 221),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50),
            height: MediaQuery.of(context).size.height * 7.2,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: _pixels > 5000 ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1000),
                  child: Container(
                    height: 300,
                    width: 800,
                    child: AnimatedPadding(
                      duration: Duration(milliseconds: 1000),
                      padding: EdgeInsets.only(
                        top: _pixels > 5000 ? 0 : 100,
                      ),
                      child: MiniContentbox4(),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Column(
                  children: [
                    Container(
                      child: VerticalTimeline(
                        child1: Circle1(
                          text1: '22 Sep\n',
                          text2: '2018',
                        ),
                        child2: TreeContent1(
                          text1: 'Listing to the major exchanges\n',
                        ),
                      ),
                    ),
                    Container(
                      child: VerticalTimeline(
                        child1: TreeContent1(
                          text1: 'Platform integration to marketplaces\n',
                        ),
                        child2: Circle1(
                          text1: '22 Sep\n',
                          text2: '2018',
                        ),
                      ),
                    ),
                    Container(
                      child: VerticalTimeline(
                        child1: Circle1(
                          text1: '22 Sep\n',
                          text2: '2018',
                        ),
                        child2: TreeContent1(
                          text1: 'Crypto Wallet version release\n',
                        ),
                      ),
                    ),
                    Container(
                      child: VerticalTimeline(
                        child1: TreeContent1(
                          text1: 'Platform ealier version development\n',
                        ),
                        child2: Circle1(
                          text1: '22 Sep\n',
                          text2: '2018',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('images/image23.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'TOKEN SALE ENDS IN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 50),
                          TimerCountdown(
                            format:
                                CountDownTimerFormat.daysHoursMinutesSeconds,
                            endTime: DateTime.now().add(
                              Duration(
                                days: 15,
                                hours: 20,
                                minutes: 47,
                                seconds: 45,
                              ),
                            ),
                            onEnd: () {
                              print("Timer finished");
                            },
                            timeTextStyle: TextStyle(
                              color: CupertinoColors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 60,
                            ),
                            colonsTextStyle: TextStyle(
                              color: CupertinoColors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 40,
                            ),
                            descriptionTextStyle: TextStyle(
                              color: CupertinoColors.white,
                              fontSize: 20,
                            ),
                            spacerWidth: 30,
                            daysDescription: "days",
                            hoursDescription: "hours",
                            minutesDescription: "minutes",
                            secondsDescription: "seconds",
                          ),
                          SizedBox(height: 50),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '33m',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: 250),
                                    Text(
                                      '75m',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 10),
                                          height: 15,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 117, 23, 23),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        Positioned(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 345),
                                            child: Container(
                                              height: 10,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 240, 190, 40),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 50),
                          CustomSquaredButton(
                            Text: 'BUY MORE TOKENS',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 240),
                    Container(
                      height: 500,
                      width: 700,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              TokenContainer(
                                child1: CircleRing(
                                  color1: Color.fromARGB(255, 235, 199, 91),
                                ),
                                text1: 'Token Name\n',
                                text2: 'Crypto Token',
                              ),
                              SizedBox(height: 10),
                              TokenContainer(
                                child1: CircleRing(
                                  color1: Color.fromARGB(255, 235, 96, 91),
                                ),
                                text1: 'ICO Pre-sale starts in\n',
                                text2: 'June 15-30, 2019',
                              ),
                              SizedBox(height: 10),
                              TokenContainer(
                                child1: CircleRing(
                                  color1: Color.fromARGB(255, 146, 235, 91),
                                ),
                                text1: 'Platform\n',
                                text2: 'Ethereum based',
                              ),
                              SizedBox(height: 10),
                              TokenContainer(
                                child1: CircleRing(
                                  color1: Color.fromARGB(255, 91, 194, 235),
                                ),
                                text1: 'PreICO price\n',
                                text2: '1 ETH = 2,682 Token',
                              ),
                              SizedBox(height: 10),
                              TokenContainer(
                                child1: CircleRing(
                                  color1: Color.fromARGB(255, 226, 91, 235),
                                ),
                                text1: 'Price in ICO\n',
                                text2: '1 ETH = 2,682 Token',
                              ),
                            ],
                          ),
                          SizedBox(width: 50),
                          Column(
                            children: [
                              TokenContainer(
                                child1: CircleRing(
                                  color1: Color.fromARGB(255, 91, 110, 235),
                                ),
                                text1: 'Token Soft cap\n',
                                text2: '18.000.000',
                              ),
                              SizedBox(height: 10),
                              TokenContainer(
                                child1: CircleRing(
                                  color1: Color.fromARGB(255, 235, 146, 91),
                                ),
                                text1: 'Token Hard Cap\n',
                                text2: '78.000.000',
                              ),
                              SizedBox(height: 10),
                              TokenContainer(
                                child1: CircleRing(
                                  color1: Color.fromARGB(255, 146, 91, 235),
                                ),
                                text1: 'Total Supply\n',
                                text2: '250.000.000 Token',
                              ),
                              SizedBox(height: 10),
                              TokenContainer(
                                child1: CircleRing(
                                  color1: Color.fromARGB(255, 226, 91, 235),
                                ),
                                text1: 'Sold Tokens\n',
                                text2: '49,828,000 Token',
                              ),
                              SizedBox(height: 10),
                              TokenContainer(
                                child1: CircleRing(
                                  color1: Color.fromARGB(255, 91, 194, 235),
                                ),
                                text1: 'Remaining Tokens\n',
                                text2: '200,182,000 Token',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                AnimatedOpacity(
                  opacity: _pixels > 7400 ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1000),
                  child: Container(
                    height: 300,
                    width: 800,
                    child: AnimatedPadding(
                      duration: Duration(milliseconds: 1000),
                      padding: EdgeInsets.only(
                        top: _pixels > 7400 ? 0 : 100,
                      ),
                      child: MiniContentbox5(),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 420,
                        width: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'images/image25.png',
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(width: 100),
                      Container(
                        //padding: EdgeInsets.only(top: 100),
                        height: 420,
                        width: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                            ExpantionTile(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: AnimatedOpacity(
                        opacity: _pixels > 8200 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 1000),
                        child: Container(
                          height: 350,
                          width: 800,
                          child: AnimatedPadding(
                            duration: Duration(milliseconds: 1000),
                            padding: EdgeInsets.only(
                              top: _pixels > 8200 ? 0 : 100,
                            ),
                            child: MiniContentbox6(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: AnimatedAlign(
                        duration: Duration(milliseconds: 1000),
                        alignment: _pixels > 8450
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: AnimatedOpacity(
                          opacity: _pixels > 8450 ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 1000),
                          child: AnimatedPadding(
                            duration: Duration(milliseconds: 1000),
                            padding: EdgeInsets.only(
                              left: _pixels > 8450 ? 0 : 500,
                            ),
                            child: Aboutus(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Container(
                  height: 450,
                  width: 1000,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 108, 107, 107),
                        Colors.grey.shade800,
                        Colors.grey.shade900,
                        const Color.fromARGB(255, 35, 35, 35),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    image: DecorationImage(
                      image: AssetImage('images/pattern1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SubscribeContent(),
                      SizedBox(height: 50),
                      Subscribe(),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Column(
                  children: [
                    Container(
                      height: 300,
                      child: AnimatedOpacity(
                        opacity: _pixels > 9400 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: AnimatedPadding(
                          duration: Duration(milliseconds: 500),
                          padding: EdgeInsets.only(
                            top: _pixels > 9400 ? 0 : 100,
                          ),
                          child: MiniContentbox7(),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContentContainer(
                          image: Image.asset('images/image26.jpg'),
                          child: Contentbox1(),
                        ),
                        SizedBox(width: 50),
                        ContentContainer(
                          image: Image.asset('images/image27.jpg'),
                          child: Contentbox2(),
                        ),
                        SizedBox(width: 50),
                        ContentContainer(
                          image: Image.asset('images/image28.jpg'),
                          child: Contentbox3(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50),
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 93, 92, 92),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 700,
                  width: 500,
                  child: FooterBox1(),
                ),
                SizedBox(width: 50),
                Container(
                  height: 700,
                  width: 200,
                  child: FooterBox2(),
                ),
                SizedBox(width: 50),
                Container(
                  height: 700,
                  width: 200,
                  child: FooterBox3(),
                ),
                SizedBox(width: 50),
                Container(
                  height: 700,
                  width: 400,
                  child: FooterBox4(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
