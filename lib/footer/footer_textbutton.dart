import 'package:flutter/material.dart';

class FooterTextbutton extends StatefulWidget {
  const FooterTextbutton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  _FooterTextbuttonState createState() => _FooterTextbuttonState();
}

class _FooterTextbuttonState extends State<FooterTextbutton> {
  bool _hover = false;

  Color setColor() {
    if (_hover) {
      return Colors.white;
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MouseRegion(
        onEnter: (PointerEvent details) {
          setState(() {
            _hover = true;
          });
        },
        onExit: (PointerEvent details) {
          setState(() {
            _hover = false;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                widget.text,
                style: TextStyle(
                    color: setColor(),
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    height: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
