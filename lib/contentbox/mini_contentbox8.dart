import 'package:flutter/material.dart';
import 'package:websites/text_shadermask.dart';

class MiniContentbox8 extends StatefulWidget {
  const MiniContentbox8({Key? key}) : super(key: key);

  @override
  _MiniContentbox8State createState() => _MiniContentbox8State();
}

class _MiniContentbox8State extends State<MiniContentbox8> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextShadermask(
          Text: 'Contact us',
        ),
        Container(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Contact With Us\n',
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
                  text: 'This Landing Page Comes In Great And Clean Design\n',
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
    );
  }
}
