import 'package:flutter/material.dart';

class ExpantionTile extends StatefulWidget {
  const ExpantionTile({Key? key}) : super(key: key);

  @override
  _ExpantionTileState createState() => _ExpantionTileState();
}

class _ExpantionTileState extends State<ExpantionTile> {
  int? _currentPanelIndex;

  @override
  Widget build(BuildContext context) {
    List<ExpansionPanelRadio> children = [
      ExpansionPanelRadio(
        backgroundColor: Colors.black,
        hasIcon: false,
        canTapOnHeader: true,
        value: 1,
        headerBuilder: (BuildContext context, bool isExpanded) {
          return Container(
            color: Colors.black,
            child: ListTile(
              title: Text(
                'What are the objectives of this Token?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          );
        },
        body: Column(
          children: [
            Divider(
              color: Colors.white,
            ),
            Container(
              color: Colors.black,
              child: ListTile(
                title: Text(
                  'The main objective of this token is to provide a platform for the users to invest in the token and get a good return on investment.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
          ],
        ),
      ),
      ExpansionPanelRadio(
        backgroundColor: Colors.black,
        hasIcon: false,
        canTapOnHeader: true,
        value: 2,
        headerBuilder: (BuildContext context, bool isExpanded) {
          return Container(
            color: Colors.black,
            child: ListTile(
              title: Text(
                'What is the best features and services we deiver?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          );
        },
        body: Column(
          children: [
            Divider(
              color: Colors.white,
            ),
            Container(
              color: Colors.black,
              child: ListTile(
                title: Text(
                  'The main objective of this token is to provide a platform for the users to invest in the token and get a good return on investment.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
          ],
        ),
      ),
      ExpansionPanelRadio(
        backgroundColor: Colors.black,
        hasIcon: false,
        canTapOnHeader: true,
        value: 3,
        headerBuilder: (BuildContext context, bool isExpanded) {
          return Container(
            color: Colors.black,
            child: ListTile(
              title: Text(
                'Why this ICO important to me?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          );
        },
        body: Column(
          children: [
            Divider(
              color: Colors.white,
            ),
            Container(
              color: Colors.black,
              child: ListTile(
                title: Text(
                  'The main objective of this token is to provide a platform for the users to invest in the token and get a good return on investment.',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
          ],
        ),
      ),
      ExpansionPanelRadio(
        backgroundColor: Colors.black,
        hasIcon: false,
        canTapOnHeader: true,
        value: 4,
        headerBuilder: (BuildContext context, bool isExpanded) {
          return Container(
            color: Colors.black,
            child: ListTile(
              title: Text(
                'What are the objectives of this Token?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          );
        },
        body: Column(
          children: [
            Divider(
              color: Colors.white,
            ),
            Container(
              color: Colors.black,
              child: ListTile(
                title: Text(
                  'The main objective of this token is to provide a platform for the users to invest in the token and get a good return on investment.',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
          ],
        ),
      ),
    ];

    return ExpansionPanelList.radio(
      children: children,
      dividerColor: Colors.white,
    );
  }
}
