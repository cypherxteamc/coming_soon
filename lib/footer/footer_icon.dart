import 'package:flutter/material.dart';

class FooterIcon extends StatefulWidget {
  const FooterIcon({
    Key? key,
    required this.icon1,
    required this.icon2,
  }) : super(key: key);

  final IconData icon1;
  final IconData icon2;

  @override
  _FooterIconState createState() => _FooterIconState();
}

class _FooterIconState extends State<FooterIcon> {
  bool _hover = false;

  Icon setIcon() {
    if (_hover) {
      return Icon(widget.icon2);
    }
    return Icon(widget.icon1);
  }

  Color setColor() {
    if (_hover) {
      return const Color.fromARGB(255, 4, 30, 51);
    }
    return Colors.white;
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
        child: Row(
          children: [
            IconButton(
              iconSize: 20,
              onPressed: () {},
              icon: setIcon(),
              color: setColor(),
            ),
          ],
        ),
      ),
    );
  }
}
