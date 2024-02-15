import 'package:flutter/material.dart';
import 'package:websites/buttons/outlined_button.dart';

class Contentbox3 extends StatefulWidget {
  const Contentbox3({Key? key}) : super(key: key);

  @override
  _Contentbox3State createState() => _Contentbox3State();
}

class _Contentbox3State extends State<Contentbox3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.white,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'How to get trial version?\n',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 2,
                  fontSize: 30,
                ),
              ),
              TextSpan(
                text:
                    'Lorem ipsum dolor sit amet, consectetur \nadipisicing elit. Accusamus fugiat at vitae, \nratione sapiente repellat.\n',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: const Color.fromARGB(225, 189, 189, 189),
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
        CustomOutlinedButton(
          Text: 'READ DETAILS',
        ),
      ],
    );
  }
}
