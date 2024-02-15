import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:websites/footer/footer_icon.dart';

class FooterBox1 extends StatefulWidget {
  const FooterBox1({
    Key? key,
  }) : super(key: key);

  @override
  _FooterBox1State createState() => _FooterBox1State();
}

class _FooterBox1State extends State<FooterBox1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('images/logo.png', height: 60, width: 60),
        Container(
          height: 110,
          width: 700,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit ducimus voluptatibus neque illo id repellat quisquam? Autem expedita earum quae laborum ipsum ad.\n',
                  style: TextStyle(
                    fontFamily: 'Poppins ,sans-serif',
                    height: 2,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 50,
          child: Row(
            children: [
              FooterIcon(
                icon1: FontAwesomeIcons.facebookF,
                icon2: FontAwesomeIcons.facebookF,
              ),
              FooterIcon(
                icon1: FontAwesomeIcons.twitter,
                icon2: FontAwesomeIcons.twitter,
              ),
              FooterIcon(
                icon1: FontAwesomeIcons.linkedinIn,
                icon2: FontAwesomeIcons.linkedinIn,
              ),
              FooterIcon(
                icon1: FontAwesomeIcons.instagram,
                icon2: FontAwesomeIcons.instagram,
              ),
              FooterIcon(
                icon1: FontAwesomeIcons.googlePlusG,
                icon2: FontAwesomeIcons.googlePlusG,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
