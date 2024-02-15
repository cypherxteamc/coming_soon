import 'package:flutter/material.dart';
import 'package:websites/text_shadermask.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContentBox2 extends StatefulWidget {
  const ContentBox2({Key? key}) : super(key: key);

  @override
  _ContentBox2State createState() => _ContentBox2State();
}

class _ContentBox2State extends State<ContentBox2> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? TextAlign.center
              : TextAlign.left;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 18
              : 30;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 15
              : 20;
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextShadermask(
              Text: 'Crypto Trading',
            ),
            SizedBox(height: 10),
            RichText(
              textAlign: textAlignment,
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins ,sans-serif',
                  height: 1.5,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: titleSize,
                ),
                children: [
                  TextSpan(
                    text: 'Ride you want, The best way to get\n',
                  ),
                  TextSpan(
                    text: 'wherever you are going',
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              textAlign: textAlignment,
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins ,sans-serif',
                  height: 1.5,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  fontSize: descriptionSize,
                ),
                children: [
                  TextSpan(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at dictum risus, non suscipit arcu. Quisque aliquam posuere tortor, sit amet convallis nunc scelerisque in.',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
