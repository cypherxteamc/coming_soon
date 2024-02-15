import 'package:flutter/material.dart';
import 'package:websites/contentbox/team_members.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  _AboutusState createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TeamMembers(
          photo: Image.asset('images/photo1.png'),
          name: 'John Doe',
        ),
        SizedBox(width: 50),
        TeamMembers(
          photo: Image.asset('images/photo1.png'),
          name: 'John Doe',
        ),
        SizedBox(width: 50),
        TeamMembers(
          photo: Image.asset('images/photo1.png'),
          name: 'John Doe',
        ),
        SizedBox(width: 50),
        TeamMembers(
          photo: Image.asset('images/photo1.png'),
          name: 'John Doe',
        ),
      ],
    );
  }
}
