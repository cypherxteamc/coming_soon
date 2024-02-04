import 'dart:math';

import 'package:flutter/material.dart';
import 'package:websites/animated_container1.dart';
import 'package:websites/appbar_button.dart';
import 'package:websites/checkbox_cont.dart';
import 'package:websites/container_button.dart';
import 'package:websites/outlined_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/painting.dart';

class AppbarTransparent extends StatefulWidget {
  const AppbarTransparent({Key? key}) : super(key: key);

  @override
  _AppbarTransparentState createState() => _AppbarTransparentState();
}

class _AppbarTransparentState extends State<AppbarTransparent> {
  ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double pixels = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(() {
      setState(() {
        pixels = _scrollController.position.pixels;
        print(_scrollController.position.pixels);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _scrollPosition == 0
          ? AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: Image.asset('images/logo.png'),
                  ),
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
            )
          : AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: Image.asset('images/logo.png'),
                  ),
                  SizedBox(width: 70),
                  Container(
                      child: AppbarButton(
                    textColor: Colors.black,
                  )),
                ],
              ),
              backgroundColor: Color.fromARGB(255, 224, 220, 220),
            ),
      body: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 700,
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
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'Poppins ,sans-serif',
                              height: 1.5,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 40,
                            ),
                            children: [
                              TextSpan(text: 'Decenteralized Crypto \n'),
                              TextSpan(text: 'Trading Platform\n'),
                              TextSpan(
                                text:
                                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\n',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Eveniet dolorem blanditiis ad perferendis, labore \n',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'delectus dolor sit amet, adipisicing elit. Eveniet. \n',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
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
                  SizedBox(width: 300),
                  Container(
                    height: 500,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      // image: DecorationImage(
                      //   image: AssetImage('images/logo.png'),
                      //   fit: BoxFit.cover,
                      //   colorFilter: ColorFilter.mode(
                      //     const Color.fromARGB(255, 55, 15, 13)
                      //         .withOpacity(0.6), // Color
                      //     BlendMode.dstOut, // BlendMode
                      //   ),
                      // ),
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
                    opacity: pixels > 100 ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 500),
                    child: Container(
                      height: 300,
                      width: 800,
                      //color: Color.fromARGB(255, 197, 197, 213),
                      child: AnimatedPadding(
                        duration: Duration(milliseconds: 500),
                        padding: EdgeInsets.only(
                          top: pixels > 100 ? 0 : 100,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) => LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Color.fromARGB(255, 166, 61, 65),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(bounds),
                                child: Text(
                                  'Try our Platform',
                                  style: TextStyle(
                                    fontFamily: 'Poppins ,sans-serif',
                                    height: 1.5,
                                    fontWeight: FontWeight.w400,
                                    color: Colors
                                        .white, // This color will be covered by the gradient
                                    fontSize: 20,
                                  ),
                                ),
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
                            alignment: pixels > 1000
                                ? Alignment.center
                                : Alignment.topCenter,
                            child: AnimatedOpacity(
                              duration: Duration(milliseconds: 500),
                              opacity: pixels > 1000 ? 1.0 : 0.0,
                              child: Container(
                                padding: EdgeInsets.only(top: 60),
                                height: 600,
                                width: 700,
                                child: AnimatedPadding(
                                  duration: Duration(milliseconds: 500),
                                  padding: EdgeInsets.only(
                                    top: pixels > 1000 ? 0 : 100,
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ShaderMask(
                                          shaderCallback: (bounds) =>
                                              LinearGradient(
                                            colors: [
                                              Colors.white,
                                              Color.fromARGB(255, 166, 61, 65),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(bounds),
                                          child: Text(
                                            'Best Trading Experience',
                                            style: TextStyle(
                                              fontFamily: 'Poppins ,sans-serif',
                                              height: 1.5,
                                              fontWeight: FontWeight.w400,
                                              color: Colors
                                                  .white, // This color will be covered by the gradient
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    'Trade crypto currency and refer\n',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Poppins ,sans-serif',
                                                  height: 1.2,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                  fontSize: 40,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    'new members to get bounes.\n',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Poppins ,sans-serif',
                                                  height: 1.2,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                  fontSize: 40,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit ipsa ut\n',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Poppins ,sans-serif',
                                                  height: 2,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    'quasi adipisci voluptates, voluptatibus aliquid alias beatae\n',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Poppins ,sans-serif',
                                                  height: 1.5,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    'reprehenderit incidunt iusto laboriosam.',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Poppins ,sans-serif',
                                                  height: 1.5,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                            text:
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at dictum\n',
                                            style: TextStyle(
                                              fontFamily: 'Poppins ,sans-serif',
                                              height: 2,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'risus, non suscipit arcu. Quisque aliquam posuere tortor, sit amet\n',
                                            style: TextStyle(
                                              fontFamily: 'Poppins ,sans-serif',
                                              height: 1.5,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'convallis nunc scelerisque in.\n',
                                            style: TextStyle(
                                              fontFamily: 'Poppins ,sans-serif',
                                              height: 1.5,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ])),
                                        SizedBox(height: 10),
                                        CustomOutlinedButton(
                                          Text: 'READ MORE',
                                        ),
                                      ]),
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
                  left: 300,
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
                          width: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('images/image18.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 100),
                        Container(
                          height: 300,
                          width: 650,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) => LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Color.fromARGB(255, 166, 61, 65),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(bounds),
                                child: Text(
                                  'Crypto Trading',
                                  style: TextStyle(
                                    fontFamily: 'Poppins ,sans-serif',
                                    height: 1.5,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'Poppins ,sans-serif',
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 40,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'Ride you want, The best way to get\n',
                                    ),
                                    TextSpan(
                                      text: 'wherever you are going',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'Poppins ,sans-serif',
                                    height: 1.5,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at dictum\n',
                                    ),
                                    TextSpan(
                                      text:
                                          'risus, non suscipit arcu. Quisque aliquam posuere tortor, sit amet\n',
                                    ),
                                    TextSpan(
                                      text: 'convallis nunc scelerisque in.\n',
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
                ),
              ],
            ),
            Container(
              height: 1000,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 500),
                      opacity: pixels > 2000 ? 1.0 : 0.0,
                      child: Column(
                        children: [
                          AnimatedPadding(
                            duration: Duration(milliseconds: 500),
                            padding: EdgeInsets.only(
                              top: pixels > 2000 ? 0 : 100,
                            ),
                            child: AnimatedAlign(
                              duration: Duration(milliseconds: 500),
                              alignment: pixels > 1000
                                  ? Alignment.center
                                  : Alignment.topCenter,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 70),
                                  ShaderMask(
                                    shaderCallback: (bounds) => LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Color.fromARGB(255, 166, 61, 65),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ).createShader(bounds),
                                    child: Text(
                                      'Token Features',
                                      style: TextStyle(
                                        fontFamily: 'Poppins ,sans-serif',
                                        height: 1.5,
                                        fontWeight: FontWeight.w400,
                                        color: Colors
                                            .white, // This color will be covered by the gradient
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
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
                                      top: pixels > 2000 ? 0 : 200,
                                    ),
                                    child: AnimatedAlign(
                                      duration: Duration(milliseconds: 3000),
                                      alignment: pixels > 2000
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
