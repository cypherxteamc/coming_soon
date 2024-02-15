import 'package:flutter/material.dart';

class SubscribeContent extends StatefulWidget {
  const SubscribeContent({Key? key}) : super(key: key);

  @override
  _SubscribeContentState createState() => _SubscribeContentState();
}

class _SubscribeContentState extends State<SubscribeContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Don’t Miss ICO News And Updates!\n',
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
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis.\n',
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
                      'accumsan nisi Ut ut felis congue nisl hendrerit commodo.\n',
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
