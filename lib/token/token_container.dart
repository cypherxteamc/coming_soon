import 'package:flutter/material.dart';
import 'package:websites/token/circle_ring.dart';

class TokenContainer extends StatefulWidget {
  const TokenContainer({
    Key? key,
    required this.child1,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final Widget child1;
  final String text1;
  final String text2;

  @override
  _TokenContainerState createState() => _TokenContainerState();
}

class _TokenContainerState extends State<TokenContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: widget.child1,
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                // textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: widget.text1,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins ,sans-serif',
                        height: 2,
                      ),
                    ),
                    TextSpan(
                      text: widget.text2,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(237, 98, 97, 97),
                        fontFamily: 'Poppins ,sans-serif',
                        height: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
