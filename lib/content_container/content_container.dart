import 'package:flutter/material.dart';

class ContentContainer extends StatefulWidget {
  const ContentContainer({
    Key? key,
    required this.image,
    required this.child,
  }) : super(key: key);

  final Image image;
  final Widget child;

  @override
  _ContentContainerState createState() => _ContentContainerState();
}

class _ContentContainerState extends State<ContentContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: widget.image.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 350,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'ADMIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'APR 10 2018',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '7 COMMENTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 220,
            width: 350,
            child: widget.child,
          ),
        ],
      ),
    );
  }
}
