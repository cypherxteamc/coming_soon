import 'package:flutter/material.dart';
import 'package:websites/buttons/outlined_button.dart';
import 'package:websites/text_shadermask.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContentBox1 extends StatefulWidget {
  const ContentBox1({Key? key}) : super(key: key);

  @override
  _ContentBox1State createState() => _ContentBox1State();
}

class _ContentBox1State extends State<ContentBox1> {
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
      return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextShadermask(
            Text: 'Best Trading Experience',
          ),
          SizedBox(height: 10),
          RichText(
            textAlign: textAlignment,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Trade crypto currency and refer\n',
                  style: TextStyle(
                    fontFamily: 'Poppins ,sans-serif',
                    height: 1.2,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: titleSize,
                  ),
                ),
                TextSpan(
                  text: 'new members to get bounes.\n',
                  style: TextStyle(
                    fontFamily: 'Poppins ,sans-serif',
                    height: 1.2,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: titleSize,
                  ),
                ),
                TextSpan(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit ipsa ut\n',
                  style: TextStyle(
                    fontFamily: 'Poppins ,sans-serif',
                    height: 2,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: descriptionSize,
                  ),
                ),
                TextSpan(
                  text:
                      'quasi adipisci voluptates, voluptatibus aliquid alias beatae\n',
                  style: TextStyle(
                    fontFamily: 'Poppins ,sans-serif',
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: descriptionSize,
                  ),
                ),
                TextSpan(
                  text: 'reprehenderit incidunt iusto laboriosam.',
                  style: TextStyle(
                    fontFamily: 'Poppins ,sans-serif',
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: descriptionSize,
                  ),
                ),
              ],
            ),
          ),
          RichText(
              textAlign: textAlignment,
              text: TextSpan(children: [
                TextSpan(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at dictum\n',
                  style: TextStyle(
                    fontFamily: 'Poppins ,sans-serif',
                    height: 2,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: descriptionSize,
                  ),
                ),
                TextSpan(
                  text:
                      'risus, non suscipit arcu. Quisque aliquam posuere tortor, sit amet\n',
                  style: TextStyle(
                    fontFamily: 'Poppins ,sans-serif',
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: descriptionSize,
                  ),
                ),
                TextSpan(
                  text: 'convallis nunc scelerisque in.\n',
                  style: TextStyle(
                    fontFamily: 'Poppins ,sans-serif',
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: descriptionSize,
                  ),
                ),
              ])),
          SizedBox(height: 10),
          CustomOutlinedButton(
            Text: 'READ MORE',
          ),
        ]),
      );
    });
  }
}
