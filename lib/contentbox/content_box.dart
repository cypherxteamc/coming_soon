import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContentBox extends StatelessWidget {
  const ContentBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? TextAlign.center
              : TextAlign.left;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 20
              : 40;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 15
              : 20;

      return RichText(
        textAlign: textAlignment,
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'Poppins ,sans-serif',
            height: 1.5,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: titleSize,
          ),
          children: [
            TextSpan(text: 'Decenteralized Crypto \n'),
            TextSpan(text: 'Trading Platform\n'),
            TextSpan(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\n',
              style: TextStyle(
                fontSize: descriptionSize,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Eveniet dolorem blanditiis ad perferendis, labore \n',
              style: TextStyle(
                fontSize: descriptionSize,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'delectus dolor sit amet, adipisicing elit. Eveniet. \n',
              style: TextStyle(
                fontSize: descriptionSize,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );
    });
  }
}
