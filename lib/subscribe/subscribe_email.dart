import 'package:flutter/material.dart';

class SubscribeEmail extends StatefulWidget {
  const SubscribeEmail({Key? key}) : super(key: key);

  @override
  _SubscribeEmailState createState() => _SubscribeEmailState();
}

class _SubscribeEmailState extends State<SubscribeEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Enter your email',
          hintStyle: TextStyle(
            color: Colors.grey.shade800,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.grey.shade800,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.grey.shade800,
            ),
          ),
        ),
      ),
    );
  }
}
