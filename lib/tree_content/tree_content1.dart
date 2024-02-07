import 'package:flutter/material.dart';

class TreeContent1 extends StatefulWidget {
  const TreeContent1({
    Key? key,
    required this.text1,
  }) : super(key: key);

  final String text1;

  @override
  _TreeContent1State createState() => _TreeContent1State();
}

class _TreeContent1State extends State<TreeContent1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins ,sans-serif',
              ),
              children: [
                TextSpan(
                  text: widget.text1,
                  style: TextStyle(
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text:
                      'Our ICO Template Will Be A Perfect Platform For Presenting Your Ico Launch.\n',
                  style: TextStyle(
                    height: 3,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: 'This Landing Page Comes In Great And Clean Design\n',
                  style: TextStyle(
                    height: 1.5,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
