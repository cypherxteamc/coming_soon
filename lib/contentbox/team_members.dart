import 'package:flutter/material.dart';

class TeamMembers extends StatefulWidget {
  const TeamMembers({
    Key? key,
    required this.name,
    required this.photo,
  }) : super(key: key);

  final String name;
  final Image photo;

  @override
  _TeamMembersState createState() => _TeamMembersState();
}

class _TeamMembersState extends State<TeamMembers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: widget.photo.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          widget.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
