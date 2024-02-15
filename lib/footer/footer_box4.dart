import 'package:flutter/material.dart';
import 'package:websites/footer/footer_textbutton.dart';

class FooterBox4 extends StatefulWidget {
  const FooterBox4({Key? key}) : super(key: key);

  @override
  _FooterBox4State createState() => _FooterBox4State();
}

class _FooterBox4State extends State<FooterBox4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'CONTACT US',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        FooterTextbutton(
            text:
                'Mailing Address:xx00 E. Union Avenue,\nDenver, CO 80237,\n0000000000\nsupport@yourdomain.com'),
      ],
    );
  }
}
