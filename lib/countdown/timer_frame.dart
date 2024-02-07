import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class TimerFrame extends StatelessWidget {
  final Widget timer;
  final bool inverted;

  const TimerFrame({
    required this.timer,
    this.inverted = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      // padding: EdgeInsets.symmetric(
      //   vertical: inverted ? 30 : 40,
      // ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.lightBlue
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromARGB(255, 108, 107, 107),
          //     Colors.grey.shade800,
          //     Colors.grey.shade900,
          //     Colors.black,
          //   ],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
          ),
      child: Column(
        children: [
          timer,
        ],
      ),
    );
  }
}
