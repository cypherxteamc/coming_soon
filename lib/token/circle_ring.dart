import 'package:flutter/material.dart';

class CircleRing extends StatefulWidget {
  const CircleRing({Key? key, required this.color1}) : super(key: key);

  final Color color1;

  @override
  _CircleRingState createState() => _CircleRingState();
}

class _CircleRingState extends State<CircleRing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      child: Stack(
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.color1,
            ),
          ),
          Positioned(
            top: 7,
            left: 7,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
