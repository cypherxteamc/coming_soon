import 'package:flutter/material.dart';

class SubscribeButton extends StatefulWidget {
  const SubscribeButton({Key? key}) : super(key: key);

  @override
  _SubscribeButtonState createState() => _SubscribeButtonState();
}

class _SubscribeButtonState extends State<SubscribeButton> {
  late LinearGradient gradient; // Define 'gradient'

  @override
  void initState() {
    super.initState();
    gradient = LinearGradient(
      colors: [
        Color.fromARGB(255, 108, 107, 107),
        Colors.grey.shade800,
        Colors.grey.shade900,
        Colors.black,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          gradient = LinearGradient(
            colors: [
              Colors.black,
              Colors.grey.shade900,
              Colors.grey.shade800,
              Color.fromARGB(255, 108, 107, 107),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          );
        });
      },
      onExit: (event) {
        setState(() {
          gradient = LinearGradient(
            colors: [
              Color.fromARGB(255, 108, 107, 107),
              Colors.grey.shade800,
              Colors.grey.shade900,
              Colors.black,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          );
        });
      },
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: gradient, // Use 'gradient'
        ),
        child: OutlinedButton(
          onPressed: () {},
          child: Text(
            'Subscribe',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
