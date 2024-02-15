import 'package:flutter/material.dart';
import 'package:websites/footer/footer_textbutton.dart';

class FooterBox2 extends StatefulWidget {
  const FooterBox2({
    Key? key,
  }) : super(key: key);

  @override
  _FooterBox2State createState() => _FooterBox2State();
}

class _FooterBox2State extends State<FooterBox2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PRIVACY & POLICY',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        FooterTextbutton(text: 'Advertiser Agreement'),
        FooterTextbutton(text: 'Acceptable Use Policy'),
        FooterTextbutton(text: 'Privacy Policy'),
        FooterTextbutton(text: 'Technology Privacy'),
        FooterTextbutton(text: 'Developer Agreement'),
      ],
    );
  }
}
