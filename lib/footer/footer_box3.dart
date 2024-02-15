import 'package:flutter/material.dart';
import 'package:websites/footer/footer_textbutton.dart';

class FooterBox3 extends StatefulWidget {
  const FooterBox3({Key? key}) : super(key: key);

  @override
  _FooterBox3State createState() => _FooterBox3State();
}

class _FooterBox3State extends State<FooterBox3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'NAVIGATE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        FooterTextbutton(text: 'Advertisers'),
        FooterTextbutton(text: 'Developers'),
        FooterTextbutton(text: 'Resources'),
        FooterTextbutton(text: 'Company'),
        FooterTextbutton(text: 'Connect'),
      ],
    );
  }
}
