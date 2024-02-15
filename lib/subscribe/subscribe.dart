import 'package:flutter/material.dart';
import 'package:websites/subscribe/subscribe_button.dart';
import 'package:websites/subscribe/subscribe_email.dart';

class Subscribe extends StatefulWidget {
  const Subscribe({Key? key}) : super(key: key);

  @override
  _SubscribeState createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SubscribeEmail(),
          SizedBox(height: 20),
          SubscribeButton(),
        ],
      ),
    );
  }
}
